#update status of message to Send Now
task :update_published_at => :environment do
 time = Time.zone.now
 messages = Message.scheduled.where(published_at: (time.beginning_of_day..time.end_of_day))
 messages.update_all(status: "Send Now")
end

#update sent boolean to true
task :update_sent => :environment do
  messages = Message.send_now.where(published_at: (time.beginning_of_day..time.end_of_day))
  messages.update_all(sent: true)
end
