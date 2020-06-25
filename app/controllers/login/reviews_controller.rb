class Login::ReviewsController < Login::ApplicationController
  before_action :set_work
  before_action :set_review, only:[:edit, :update, :destroy]


  def new
    unless current_user.reviews.find_by(work_id: params[:work_id]).present?
      @review = @work.reviews.build
    else
      redirect_to work_path(@work), notice: 'Your review has already been posted!!'
    end
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
    if @review.update(review_params)
      redirect_to works_path(anchor: 'portfolio')
    else
      render 'edit'
    end
  end

  def destroy
    @review.destroy
    redirect_to login_my_page_index_path
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
