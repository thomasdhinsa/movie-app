class ActorsController < ApplicationController

  def actor_query
  id = params[:id].to_i
  actor = Actor.find_by(id: id)
  render json: actor
 
  end



  def actor_by_url
    id = params[:id].to_i
    actor = Actor.find_by(id: id)
    render json: actor.as_json
  end 


  def actor_by_body
    actor = params[:name]
    render json: {
      message: actor
    }
  end 



end 
