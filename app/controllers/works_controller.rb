class WorksController < ApplicationController
  before_action :set_work, only: [:show]

  def show
  end

  def index
    # @works = Work.all.by_update.page(params[:page]).per(9)
    @q = Work.with_attached_image.by_update.page(params[:page]).per(9).ransack(params[:q])
    @works = @q.result(distinct: true)
  end


  private

  def set_work
      @work = Work.find(params[:id])
  end

end
