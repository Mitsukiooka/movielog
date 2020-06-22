class DirectorsController < ApplicationController
  before_action :set_director, only: [:show]

  def show
  end

  def index
    @directors = Director.all.page(params[:page]).per(3)
  end

  private

  def set_director
      @director = Director.find(params[:id])
  end
end
