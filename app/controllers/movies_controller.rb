class MoviesController < ApplicationController

  def index
  movies = Movie.where(english: true)
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
       plot: params[:plot],
       director: params[:director],
       english: params[:english]
     )
     if movie.save
       render json: movie
     else 
      render json: {errors: movie.errors.full_messages}, status: :patial_content
     end 
  end 

  def update
     movie = Movie.find(params[:id])
     movie.title = params[:title] || movie.title
     movie.year = params[:year] || movie.year
     movie.plot = params[:plot] || movie.plot
     movie.director = params[:director] || movie.director
     movie.english = params[:english] || movie.english
     if movie.save
       render json: movie
     else 
      render json: {errors: movie.errors.full_messages}, status: :unprocessable_entity
     end 
  end

  def destroy 
    movie = Movie.find(params[:id])
    movie.delete
    render json: "Your movie choice is deleted"
  end



end
