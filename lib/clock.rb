require 'clockwork'
include Clockwork
require File.expand_path('../../config/boot',  __FILE__)
require File.expand_path('../../config/environment',  __FILE__)


# def extract_time_from_timer
#   DateTime.now.strftime("%H:%M")
# end


# Send an email to all users at specific time
every(14.day, 'reminders.send', :at => '1:41') do

  User.all.each do |u|

    ReminderMailer.send_email(u).deliver

      end
end


