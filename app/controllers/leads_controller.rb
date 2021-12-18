class LeadsController < ApplicationController
  before_action :set_lead, only: [:edit, :update, :destroy]

  def index
    @leads = Lead.all
  end

  def show
    @me = current_user
    @leads = Lead.all.order('indate') # todos ven todo
    ###############
    # ALERT, TODO, despues lo arreglo
    # Putting the variable directly into the conditions string will pass the variable to the database as-is. This means that it will be an unescaped variable directly from a user who may have malicious intent.
    # el admin puede ver todo, los usuarios solo sus leads
    #@leads = Lead.where("user_id = #{@me.id}")
    ###############
    # TODO: hacer un scope para la siguiente linea
    @meetings = Meeting.where("user_id = #{@me.id}")
    @desglose = Lead.pluck("status").tally   # si pero tally es para ruby 2.7
  end

  def new
    @lead = Lead.new
    @statuses = statuses
  end

  def edit
    @lead = Lead.find(params[:id])
  end


  def create
    @lead = Lead.new(lead_params)
    @lead.user = current_user
    @statuses = statuses
    if @lead.save
      redirect_to lead_path(@lead)
    else
      render :new
    end
  end

  def destroy
    @lead = Lead.find(params[:id])
    @lead.destroy
    redirect_to '/'
  end

  def update
    @lead.update(lead_params)
    redirect_to root_path
  end

  private

  def lead_params
    params.require(:lead).permit(:email, :name, :phone, :status, :indate, :user)
  end

  def set_lead
    @lead = Lead.find(params[:id])
  end

  def statuses
    Status.pluck("status")
  end

end
