class MeetingsController < ApplicationController
  before_action :find_lead, except: [ :new, :create ]
  def index
    @meetings = @lead.meetings
  end

  def show
    @meetings = @lead.meetings
  end

  def new
    @meeting = Meeting.new
  end

  def create
    @meeting = Meeting.new(meeting_params)
    @meeting.lead = @lead
    if @meeting.save
      redirect_to meetings_path(@lead)
    else
      render 'pages/home'
    end
  end



  private

  def meeting_params
    params.require(:lead).permit(:summary, :content)
  end

  def find_lead
    @lead = Lead.find(params[:lead_id])
  end


end
