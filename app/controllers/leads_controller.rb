class LeadsController < ApplicationController
  before_action :set_lead, only: [:show, :edit, :update, :destroy]

  def index
    redirect_to '/'
  end

  def new
    @lead = Lead.new
  end

  def edit
    @lead = Lead.find(params[:id])
  end

  def create
    @lead = Lead.new(lead_params)
    @lead.user = current_user
    if @lead.save
      redirect_to leads_path(@lead)
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
    redirect_to leads_path
  end

  private

  def lead_params
    params.require(:lead).permit(:email, :name, :phone, :status, :indate, :user)
  end

  def set_lead
    @lead = Lead.find(params[:id])
  end


end
