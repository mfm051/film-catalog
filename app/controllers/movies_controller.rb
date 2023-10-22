class MoviesController < ApplicationController
  def show
    @movie = Movie.find(params[:id])
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(params.require(:movie).permit(
      :title,
      :year,
      :synopsis,
      :country,
      :duration,
      :director_id,
      :genre_id
    ))
    @movie.save

    redirect_to :root
  end
end