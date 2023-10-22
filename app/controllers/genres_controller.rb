class GenresController < ApplicationController
  def show
    @genre = Genre.find(params[:id])
    @movies_with_genre = Movie.where("genre_id = ?", params[:id])
  end
end