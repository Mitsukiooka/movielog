class Login::ReviewsController < Login::ApplicationController
  before_action :set_work
  before_action :set_review, only:[:edit, :update, :destroy]


  def new
    @review = @work.reviews.build
  end

  def create
    @review = @work.reviews.build(review_params.merge(user_id: current_user.id))
    if @review.save
      redirect_to works_path(anchor: 'portfolio')
    else
      render 'new'
    end
  end

  def edit
  end

  def update
  end

  private

  def review_params
      params[:review].permit(:rate, :comment)
  end

  def set_review
      @review = Review.find(params[:id])
  end

  def set_work
    @work = Work.find(params[:work_id])
  end
end
