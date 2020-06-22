class Login::DirectorsController < Login::ApplicationController
  before_action :set_director, only: [:edit, :update, :destroy]

  def new
    @director = Director.new
  end

  def create
    @director = Director.new(director_params)
    if @director.save
      redirect_to directors_path(anchor: 'portfolio')
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @director.update(director_params)
      redirect_to directors_path(anchor: 'portfolio')
    else
      render 'edit'
    end
  end

  def destroy
    @director.destroy
    redirect_to directors_path(anchor: 'portfolio')
  end

  private

  def set_director
      @director = Director.find(params[:id])
  end

  def director_params
      params[:director].permit(:name, :from, :image, :remove_image, :image_cache)
  end

end
