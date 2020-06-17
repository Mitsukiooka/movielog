class WorksController < ApplicationController
  before_action :set_work, only: [:edit, :update, :show, :destroy]

  def show
  end

  def index
    @works = Work.all.page(params[:page]).per(9)
  end

  def new
    @work = Work.new
    @work.director_id = params[:director_id] if params[:director_id].present?
  end

  def create
    @work = Work.new(work_params)
    if @work.save
      redirect_to works_path
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @work.update(work_params)
      redirect_to works_path
    else
      render 'edit'
    end
  end

  def destroy
    @work.destroy
    redirect_to works_path
  end

  def move_higher
    Work.find(params[:id]).move_higher
    redirect_to works_path
  end


  private

  def set_work
      @work = Work.find(params[:id])
  end

  def work_params
      params[:work].permit(:title, :release, :starring, :description, :director_id,
        :image, :remove_image, :image_cache, genre_ids: [])
  end

end
