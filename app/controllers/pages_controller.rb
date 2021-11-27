class PagesController < ApplicationController
  def home
    @me = current_user
    #leads = Lead.all # todos ven todo
    
    ###############
    # ALERT, TODO, despues lo arreglo
    # Putting the variable directly into the conditions string will pass the variable to the database as-is. This means that it will be an unescaped variable directly from a user who may have malicious intent.
    # el admin puede ver todo, los usuarios solo sus leads
    @leads = Lead.where("user_id = #{@me.id}")
    ###############

    @meetings = Meeting.where("user_id = #{@me.id}")
    #@per_lead_meetings = @meetings.count
    #<% @allotment.offers.where(status: "active").each do |offer| %>

    
  end
end
