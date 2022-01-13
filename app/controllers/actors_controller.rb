class ActorsController < ApplicationController

  def actor_query
  id = params[:id].to_i
  actor = Actor.find_by(id: id)
  render json: actor
 
  end
end 
