class LeadsController < ApplicationController
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
    if @lead.save
      redirect_to leads_path
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
    find_lead
    @lead.update(lead_params)
    redirect_to '/'
  end

  private

  def lead_params
    params.require(:lead).permit(:email, :name, :phone, :status, :indate, :id)
  end

  def find_lead
    @lead = Lead.find(params[:id])
  end


end
