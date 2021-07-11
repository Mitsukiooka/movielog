class Api::WorksController < Api::ApplicationController
  skip_forgery_protection

  def index
    @works = Work.all
    render json: @works.map { |work| { id: work.id, title: work.title, release: work.release, 
      starring: work.starring, description: work.description} } 
  end

  def create
    @work = Work.create(work_params)
    render json: { id: work.id, title: work.title, release: work.release, 
      starring: work.starring, description: work.description}, status: :created
  end

  def update
    @work = Work.find(params[:id])
    @work.update(work_params)
  end

  private
  def work_params
    params[:work].permit(:title, :release)
  end
end
