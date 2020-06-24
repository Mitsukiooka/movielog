class Login::MyPageController < Login::ApplicationController
  def index
    @profile = current_user.profile
    @reviews = current_user.reviews
  end
end
