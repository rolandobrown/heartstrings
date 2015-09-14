class ApplicationMailer < ActionMailer::Base
  default from: "hello@heartstrings.io"
  layout 'mailer'
end

class SendWeeklySummary
  def run
    User.find_each do |user|
      UserMailer.weekly_summary(user).deliver_now
    end
  end
end
