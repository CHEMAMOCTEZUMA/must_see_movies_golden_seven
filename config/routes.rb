Rails.application.routes.draw do
 
get("/", { :controller => "movies", :action => "movie" })


#directors

get("/directors", { :controller => "movies", :action => "director" })

get("/directors/:id", { :controller => "movies", :action => "director_bio" })

get("/directors/delete_director/:id", { :controller => "movies", :action => "destroy_director" })

get("/directors/:id/edit", { :controller => "movies", :action => "edit_director" })

get("/directors/update_director/:id", { :controller => "movies", :action => "update_director" })


#actors

get("/actors", { :controller => "movies", :action => "actor" })

get("/actors/:id", { :controller => "movies", :action => "actor_bio" })

get("/actors/delete_actor/:id", { :controller => "movies", :action => "destroy_actor" })

get("/actors/:id/edit", { :controller => "movies", :action => "edit_actor" })

get("/actors/update_actor/:id", { :controller => "movies", :action => "update_actor" })


#movies

get("/movies", { :controller => "movies", :action => "movie" })

get("/movies/:id", { :controller => "movies", :action => "movie_det" })

get("/movies/delete_movie/:id", { :controller => "movies", :action => "destroy_movie" })

get("/movies/:id/edit", { :controller => "movies", :action => "edit_movie" })

get("/movies/update_movie/:id", { :controller => "movies", :action => "update_movie" })

end
