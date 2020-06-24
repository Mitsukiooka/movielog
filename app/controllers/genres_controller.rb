class GenresController < ApplicationController
  def show
    @genre = Genre.find(params[:id])
    @q = @genre.works.page(params[:page]).per(9).ransack(params[:q])
    @works = @q.result(distinct: true)
    render 'works/index'
  end
end
