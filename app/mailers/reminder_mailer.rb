class ReminderMailer < ActionMailer::Base
  default from: "wdi.sydney@gmail.com"


  def send_email(user)


    @user = user
    mail(to: @user.email , subject: "New Chapter Section Available", body:" ")
  end
end


#   def welcome_email(user)
#     @user = user
#     @url  = 'http://example.com/login'
#     mail(to: @user.email, subject: 'Welcome to My Awesome Site')
#   end
# end

# end
