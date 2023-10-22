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

  def edit
    @movie = Movie.find(params[:id])
  end

  def update
    @movie = Movie.find(params[:id])
    @movie.update(params.require(:movie).permit(
      :title,
      :year,
      :synopsis,
      :country,
      :duration,
      :director_id,
      :genre_id
    ))

    redirect_to :root
  end

  def destroy
    Movie.destroy(params[:id])

    redirect_to :root
  end
end