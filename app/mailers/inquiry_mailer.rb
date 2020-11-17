class InquiryMailer < ApplicationMailer

  def send_for_admin(help)
    @help = help
    mail to: "mooka0907@gmail.com", subject: "[#{@help.inquiry_title}]", reply_to: @help.email
  end
end
