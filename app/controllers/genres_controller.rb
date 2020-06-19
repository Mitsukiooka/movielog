class GenresController < ApplicationController
  def show
    @genre = Genre.find(params[:id])
    @works = @genre.works.page(params[:page]).per(9)
    render 'works/index'
  end
end
