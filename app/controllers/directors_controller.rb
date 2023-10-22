class DirectorsController < ApplicationController
  def show
    @director = Director.find(params[:id])
    @movies_by_director = Movie.where("director_id = ?", params[:id])
  end 
end