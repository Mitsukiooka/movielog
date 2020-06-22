class Login::ReviewsController < Login::ApplicationController
  before_action :set_work
  
  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  private

  def set_work
      @work = Work.find(params[:id])
  end

end
