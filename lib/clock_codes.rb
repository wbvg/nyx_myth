require 'clockwork'
include Clockwork
require File.expand_path('../../config/boot',  __FILE__)
require File.expand_path('../../config/environment',  __FILE__)

Clockwork.configure do |config|
  config[:sleep_timeout] = 5
  config[:logger] = Logger.new(log_file_path)
  config[:tz] = 'User.time_zone'
  config[:max_threads] = 15
end

# # handler do |job|
# #   puts "Running #{job}"
# # end

# reminders = Reminder.find(:all, :conditions => ["reminder_at <= ? and reminder_at > ?", Time.now.advance(:minutes => 2), Time.now])
# #reminders = Reminder.find(:all, :conditions => ["reminder_at <= ?", #Time.now.advance(:minutes => 2)])
# unless reminders.nil?
# UserMailer.send_later( :deliver_event_reminder, reminders )
# end
# }

# every 24.hour, at: 6 do
#  runner 'Delayed::Job.enqueue(DelayedRake.new("contact:new"),priority:1,run_at: Time.now)'
# end

# every(14.day, 'Queueing scheduled job', :at => '14:17') { Delayed::Job.enqueue ScheduledJob.new }

#how to run clock.rb from lib directory - clockwork clock.rb
every(14.day, 'reminders.send', :at => '9:57') do

  User.all.each do |u|



    ('**:**') = timer
    if u.timer == Time.now

      reminders = User.find(:all, :conditions => ["timer <= ?", Time.now], at: => '**:**')
      u.timer &&

                # what object is reminders

            unless reminders.nil?
              reminders.each do |i|
                user.delay.send_email
              end

        ReminderMailer.send_email(u).deliver
    # end

# end

 # :at => '<% @user.timer %>', :tz => '<% @user.time_zone %>'

# Reminder.send_later(:send_reminders)
# user.delay.send_email

end


# every(1.day, 'reminder.deliver') {

#   # what object is reminders
# reminders = User.find(:all, :conditions => ["timer <= ?", Time.now])
# unless reminders.nil?
#   reminders.each do |i|
#     user.delay.send_email
#   end
# end

# }


# The wildcard for hour and minute is supported:

# every(1.hour, 'reminders.send', :at => '**:30')
# every(10.seconds, 'frequent.job', :at => '9:**')

# every(24.hour, 'reminders.send', :at => '**:**')

# every(1.day, 'midnight.job', :at => '<% @user.timer %>')

# Clockwork.every(1.day, 'myjob', :if => lambda { |t| t.day == 1 })
