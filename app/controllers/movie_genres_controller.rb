class MovieGenresController < ApplicationController


  def create
    moviegenre = MovieGenre.new(
     
     genre_id: params[:genre_id],
     movie_id: params[:movie_id]
     )
    if moviegenre.save
     render json: moviegenre
     else 
     render json: {errors: moviegenre.errors.full_messages}, status: :patial_content
     end 
   end 

   def index
    moviegenres = MovieGenre.all
    render json: moviegenres
   end 




end
