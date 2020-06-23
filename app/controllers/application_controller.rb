class ApplicationController < ActionController::Base
  protected
  def after_sign_in_path_for(resource)
    login_my_page_index_path
  end

  def after_sign_out_path_for(resource)
    root_path
  end
end
