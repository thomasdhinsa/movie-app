Rails.application.routes.draw do
  

get "/movies/" => "movies#index"

get "movies/:id" => "movies#show"

post "movies" => "movies#create"

patch "movies/:id" => "movies#update"

delete "movies/:id" => "movies#destroy"

###

get "actors/:id" => "actors#show"

get "actors" => "actors#index"

post "actors" => "actors#create"

patch "actors/:id" => "actors#update"

delete "actors/:id" => "actors#destroy"


end





