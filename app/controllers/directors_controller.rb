class DirectorsController < ApplicationController
  def show
    @director = Director.find(params[:id])
    @movies_by_director = Movie.where("director_id = ?", params[:id])
  end
  
  def new
    @director = Director.new
  end

  def create
    @director = Director.new(params.require(:director).permit(
      :name,
      :nationality,
      :date_of_birth,
      :genre_id
    ))
    @director.save

    redirect_to :root
  end

  def edit
    @director = Director.find(params[:id])
  end

  def update
    @director = Director.find(params[:id])
    @director.update(params.require(:director).permit(
      :name,
      :nationality,
      :date_of_birth,
      :genre_id
    ))

    redirect_to :root
  end
end