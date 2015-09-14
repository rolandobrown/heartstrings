class Message < ActiveRecord::Base
  belongs_to :sender, :class_name => "User"
  belongs_to :receiver, :class_name => "User"

  validates :receiver_id, :sender_id, :subject, :body,  presence: true

  scope :draft,     ->{ where(status: "Draft") }
  scope :send_now,  ->{ where(status: "Send Now") }
  scope :scheduled, ->{ where(status: "Scheduled") }

  attr_accessor :status

  before_validation :clean_up_status

  def clean_up_status
    self.published_at = case status
                        when "Draft"
                          nil
                        when "Send Now"
                          Time.zone.now
                        else
                          published_at
                        end
    true
  end

  def time_to_delivery
    diff = DateTime.parse("#{self.published_at}").to_time - Time.zone.now.to_time
    time_to_delivery_in_hours = diff / 3600
    time_to_delivery_in_days = time_to_delivery_in_hours / 24
    time_to_delivery_in_days.round

    if time_to_delivery_in_days.round < 0
      return "Message has been sent!"
    else
      return "Approx #{time_to_delivery_in_days.round} day(s) until this heartstring is delivered! Yah!"
    end
  end

end
