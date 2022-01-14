class ForMoviesController < ApplicationController

  def p_all_movies
    movies = Movie.all
  render json: movies.as_json 
  end 

  def a_movie_query
    id = params[:id].to_i
    movie = Movie.find_by(id: id)
    render json: movie.as_json
  end  

  # def in_reverse
  #   movies = Movie.reverse_order  
  #   render json: movies.as_json
  # end 

  # def find_by_query
  #   title = params[:title]
  #   movie = Movie.find_by(title: title)
  #   render json: movie.as_json
  # end 


  #








end
