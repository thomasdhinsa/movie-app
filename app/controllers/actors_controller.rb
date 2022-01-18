class ActorsController < ApplicationController

  def show
  id = params[:id].to_i
  actor = Actor.find_by(id: id)
  render json: actor
 
  end

  def index
    actors = Actor.all
    render json: actors 
  end 

  def update
    actor = Actor.find(params[:id])
    actor.first_name = params[:first_name] || actor.first_name
    actor.last_name = params[:last_name] || actor.last_name
    actor.known_for = params[:known_for] || actor.known_for
    actor.save
    render json: actor
  end 

  def create
   actor = Actor.new(
    first_name: params[:first_name], 
    last_name: params[:last_name],
    known_for: params[:known_for]
    )
   actor.save
   render json: actor
  end 

  def destroy
    actor = Actor.find(params[:id])
    actor.delete
    render json: {message: "Your actor is deleted"}
  end
end 
