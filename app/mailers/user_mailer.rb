class UserMailer < ApplicationMailer
default from: 'no-reply@jungle.com'
 
  def receipt_email(user)
    @user = user
    @url  = 'http://example.com/login'
    mail(to: @user.email, subject: 'Thanks for your purchase')
  end
end
