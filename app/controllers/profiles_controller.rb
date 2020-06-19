class ProfilesController < ApplicationController
  before_action :set_profile, only: [:edit, :update, :show, :destroy]

  def show
  end


  def new
    @profile = current_user.build_profile
  end

  def create
    @profile = current_user.build_profile(profile_params)
    if @profile.save
      redirect_to profile_path(@profile)
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @profile.update(profile_params)
      redirect_to profile_path(@profile)
    else
      render 'edit'
    end
  end

  def destroy
    @profile.destroy
    redirect_to root_path
  end



  private

  def set_profile
    @profile = current_user.profile
  end

  def profile_params
    params[:profile].permit(
      :first_name,
      :last_name,
      :from,
      :image,
      :remove_image,
      :image_cache, 
      :description,
      :age,
      :bestfilm,
      :bestactor,
      :bestdirector,
      :instagram,
      :twitter
    )
  end

end
