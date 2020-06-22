class DirectorsController < ApplicationController
  before_action :set_director, only: [:show]

  def show
  end

  def index
    @directors = Director.all.page(params[:page]).per(3)
    @q = Director.all.page(params[:page]).per(3).ransack(params[:q])
    @directors = @q.result(distinct: true)
  end

  private

  def set_director
      @director = Director.find(params[:id])
  end
end
