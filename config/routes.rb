Rails.application.routes.draw do
 
get("/directors", { :controller => "movies", :action => "director" })

get("/directors/:id", { :controller => "movies", :action => "director_bio" })

get("/actors", { :controller => "movies", :action => "actor" })

get("/actors/:id", { :controller => "movies", :action => "actor_bio" })

get("/movies", { :controller => "movies", :action => "movie" })

get("/movies/:id", { :controller => "movies", :action => "movie_det" })

end
