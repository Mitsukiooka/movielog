class GenresController < ApplicationController
  def show
    @genre = Genre.find(params[:id])
    @works = @genre.works
    render 'works/index'
  end
end
