class HelpController < ApplicationController
  def index
    @help = Help.new
  end

  def submit
    @help = Help.new(help_params)
    if @help.valid?
      InquiryMailer.send_for_admin(@help).deliver
      redirect_to help_received_path
    else
      render 'index'
    end
  end

  private
    def help_params
      params[:help].permit(
        :email,
        :name,
        :first_name,
        :inquiry_title,
        :inquiry_body
      )
    end
end
