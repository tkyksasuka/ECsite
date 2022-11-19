class Admin::GenresController < ApplicationController

  def index
    @genres = Genre.all
    @genre_new = Genre.new(genre_params)
    @genre_new.save
    redirect_to
  end

  def edit
    @genre = Genre.find(params[:id])
    @genre.update(genre_params)
    redirect_to
  end


end
