class HomeController < ApplicationController
  def index
    @movies = Movie.all
    @genres = Genre.all
    @directors = Director.all
  end
end