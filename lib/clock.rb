require 'clockwork'
include Clockwork
require File.expand_path('../../config/boot',  __FILE__)
require File.expand_path('../../config/environment',  __FILE__)

every(14.day, 'reminders.send', :at => '12:53') do

  User.all.each do |u|
        ReminderMailer.send_email(u).deliver
  end
end

