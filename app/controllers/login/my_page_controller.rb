class Login::MyPageController < Login::ApplicationController
  def index
    @profile = current_user.profile
  end
end
