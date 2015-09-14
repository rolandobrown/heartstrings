# #update status of message to Send Now
# task :update_published_at => :environment do
#  time = Time.zone.now
#  messages = Message.scheduled.where(published_at: (time.beginning_of_day..time.end_of_day))
#  messages.update_all(status: "Send Now")
# end
#
# #update sent boolean to true
# task :update_sent => :environment do
#   messages = Message.send_now.where(published_at: (time.beginning_of_day..time.end_of_day))
#   messages.update_all(sent: true)
# end
#
# task :send_message => :environment do
#   if messages.sent = false
#     current_user.send_message(receiver, "Body", "subject")
# end

task :send_eligible_messages => :environment do
  messages = Message.where("published_at > ?", DateTime.now).where(sent: nil)
  messages.each do |message|
    message.update(sent: true)
    UserMailer.send_message(message).deliver
  end
end
