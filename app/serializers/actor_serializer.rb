class ActorSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :known_for, :movie_id
  
  
  belongs_to :movie 



end

