class GenresController < ApplicationController
  def show
    @genre = Genre.find(params[:id])
    @movies_with_genre = Movie.where("genre_id = ?", params[:id])
  end

  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.new(params.require(:genre).permit(:name))
    @genre.save

    redirect_to :root
  end

  def edit
    @genre = Genre.find(params[:id])
  end

  def update
    @genre = Genre.find(params[:id])
    @genre.update(params.require(:genre).permit(:name))

    redirect_to :root
  end
end