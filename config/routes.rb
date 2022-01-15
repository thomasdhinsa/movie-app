Rails.application.routes.draw do
  

get "/p_all_movies/" => "for_movies#p_all_movies"

get "a_movie_query/:id" => "for_movies#a_movie_query"

get "find_by_query/:year" => "for_movies#find_by_query"

get "actor_query/:id" => "actors#actor_query"


get "actor_by_url/:id" => "actors#actor_by_url"


post "actor_by_body" => "actors#actor_by_body"





end
