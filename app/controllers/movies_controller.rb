class MoviesController < ApplicationController

  def index
  movies = Movie.all
  render json: movies 
  end 

  def show
    id = params[:id].to_i
    movie = Movie.find_by(id: id)
    render json: movie.as_json
  end  

  def create
     movie = Movie.new(
       title: params[:title],
       year: params[:year],
       plot: params[:plot]
     )
     movie.save
     render json: movie
  end 

  def update
     movie = Movie.find(params[:id])
     movie.title = params[:title] || movie.title
     movie.year = params[:year] || movie.year
     movie.plot = params[:plot] || movie.plot
     movie.save
     render json: movie
  end

  def destroy 
    movie = Movie.find(params[:id])
    movie.delete
    render json: "Your movie choice is deleted"
  end



end
