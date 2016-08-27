class UserMailerTest < ApplicationMailer
  default from: "adam@backcountrycyclist.com"

  def contact_form(email, name, message)
  @message = message
    mail(
      :from => email,
        :to => 'ashortsleeves@gmail.com',
        :subject => "A new contact form message from #{name}")
  end


end
