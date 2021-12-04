class PagesController < ApplicationController
  def home
    @me = current_user
    @leads = Lead.all.order('indate') # todos ven todo
    
    ###############
    # ALERT, TODO, despues lo arreglo
    # Putting the variable directly into the conditions string will pass the variable to the database as-is. This means that it will be an unescaped variable directly from a user who may have malicious intent.
    # el admin puede ver todo, los usuarios solo sus leads
    #@leads = Lead.where("user_id = #{@me.id}")
    ###############

    @meetings = Meeting.where("user_id = #{@me.id}")

    # Lead.pluck.tally   # si pero tally es para ruby 2.7
    @desglose = Lead.pluck(:status).each_with_object(Hash.new(0)) { |v, h| h[v] += 1 }


    
  end
end
