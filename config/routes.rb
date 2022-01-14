Rails.application.routes.draw do
  
#get "/actor_query/:id" => "actors#actor_query"

get "/p_all_movies/" => "for_movies#p_all_movies"

get "a_movie_query/:id" => "for_movies#a_movie_query"

get "in_reverse" => "for_movies#in_reverse"

get "find_by_query/:year" => "for_movies#find_by_query"


#The second and third pathways work. I'm still messing around with the method for the fourth.

end
