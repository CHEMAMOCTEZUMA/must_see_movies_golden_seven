class MoviesController < ApplicationController

  def director

  	@list_of_directors = Director.all

  end

  def director_bio

  	@director = Director.find_by({:id => params[:id]})

  end

  def edit_director

	@director = Director.find_by({:id => params["id"]})

  end

  def update_director

	@update_director = Director.find_by({:id => params["id"]})
  	@update_director.name = params[:name]
  	@update_director.image_url = params[:image_url]
  	@update_director.bio = params[:bio]
  	@update_director.dob = params[:dob]
  	@update_director.save	

  	redirect_to("http://localhost:3000/directors")

  end  
  
  def destroy_director

	@delete_director = Director.find_by({:id => params[:id]})
	@name = @delete_director.name
	@delete_director.destroy

  end

  def director_form

  end

  def create_director

  	@new = Director.new 
  	@new.name = params[:name]
  	@new.image_url = params[:image_url]
  	@new.bio = params[:bio]
  	@new.dob = params[:dob]
  	@new.save

  	redirect_to("http://localhost:3000/directors")

  end

  def actor

  	@list_of_actors = Actor.all

  end

  def actor_bio

  	@actor = Actor.find_by({:id => params[:id]})

  end

  def edit_actor

	@actor = Actor.find_by({:id => params["id"]})

  end

  def update_actor

	@update_actor = Actor.find_by({:id => params["id"]})
  	@update_actor.name = params[:name]
  	@update_actor.image_url = params[:image_url]
  	@update_actor.bio = params[:bio]
  	@update_actor.dob = params[:dob]
  	@update_actor.save	

  	redirect_to("http://localhost:3000/actors")

  end  

  def destroy_actor

	@delete_actor = Actor.find_by({:id => params[:id]})
	@name = @delete_actor.name
	@delete_actor.destroy

  end

  def actor_form

  end

  def create_actor

  	@new = Actor.new 
  	@new.name = params[:name]
  	@new.image_url = params[:image_url]
  	@new.bio = params[:bio]
  	@new.dob = params[:dob]
  	@new.save

  	redirect_to("http://localhost:3000/actors")

  end

  def movie

  	@movies = Movie.all

  end

  def movie_det

  	@movie = Movie.find_by({:id => params[:id]})

  end

  def edit_movie

	@movie = Movie.find_by({:id => params["id"]})

  end

  def update_movie

	@update_movie = Movie.find_by({:id => params["id"]})
  	@update_movie.title = params[:title]
  	@update_movie.image_url = params[:image_url]
  	@update_movie.year = params[:year]
  	@update_movie.duration = params[:duration]
  	@update_movie.description = params[:description]
  	@update_movie.save	

  	redirect_to("http://localhost:3000/movies")

  end  

  def destroy_movie

	@delete_movie = Movie.find_by({:id => params[:id]})
	@name = @delete_movie.title
	@delete_movie.destroy

  end

  def movie_form

  end

  def create_movie

  	@new = Movie.new 
  	@new.title = params[:title]
  	@new.image_url = params[:image_url]
  	@new.year = params[:year]
  	@new.duration = params[:duration]
  	@new.description = params[:description]
  	@new.save

  	redirect_to("http://localhost:3000/movies")

  end

 end