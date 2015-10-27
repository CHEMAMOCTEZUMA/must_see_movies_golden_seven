class MoviesController < ApplicationController
  
  def director

  	@list_of_directors = Director.all

  end

  def director_bio

  	@director = Director.find_by({:id => params[:id]})

  end

  def actor

  	@list_of_actors = Actor.all

  end

  def actor_bio

  	@actor = Actor.find_by({:id => params[:id]})

  end

  def movie

  	@movies = Movie.all

  end

  def movie_det

  	@movie = Movie.find_by({:id => params[:id]})

  end

 end