class MeetingsController < ApplicationController
  before_action :find_lead, except: [ :new ]

  def index
    @meeting = Meeting.new
    @meetings = @lead.meetings
  end

  def show
    @meetings = @lead.meetings
  end

  def new
    #@meeting = Meeting.new
  end

  def create
    @meeting = Meeting.new(meeting_params)
    #weno, estas dos siguientes lineas me costo un trio de horas averiguarlas
    @meeting.lead = @lead
    @meeting.user = current_user
    #byebug

    if @meeting.save
      redirect_to lead_meetings_path(@lead)
    else
      render lead_meeting_path
    end
  end



  private

  def meeting_params
    params.require(:meeting).permit(:summary, :content)
  end

  def find_lead
    @lead = Lead.find(params[:lead_id])
  end


end
