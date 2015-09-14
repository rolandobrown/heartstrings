class UserMailer < ApplicationMailer
  default from: 'hello@heartstrings.io'

  def welcome_email(user)
    @user = user
    @url  = 'http://www.heartstrings.io/login'
    mail(to: @user.email, subject: 'Welcome to HeartStrings!')
  end

  def send_message(receiver)
     @receiver = receiver
     mail( :to => @receiver.email,
     :subject => @message.subject,
     :body => @message.body)
   end

end
