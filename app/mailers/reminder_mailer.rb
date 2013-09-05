class ReminderMailer < ActionMailer::Base
  default from: "wdi.sydney@gmail.com"

  def set_user_time_zone
    Time.zone = current_user.time_zone if user_signed_in?
  end

  def send_email(user)
    @user = user
    mail(to: @user.email , subject: "New Chapter Section Available", body:"The next chapter section is available visit http://www.nyxmyth.com")
  end
end


#   def welcome_email(user)
#     @user = user
#     @url  = 'http://example.com/login'
#     mail(to: @user.email, subject: 'Welcome to My Awesome Site')
#   end
# end

# end
