class UserMailer < ApplicationMailer
  default from: 'hello@heartstrings.io'

  def welcome_email(user)
    @user = user
    @url  = 'http://www.heartstrings.io/users/sign_in'
    mail(to: @user.email, subject: 'Welcome to HeartStrings!')
  end

  def send_message(message)
     @receiver = message.receiver
     mail(:to => message.receiver.email,
     :from => message.sender.email,
     :subject => message.subject,
     :body => message.body)
   end

end
