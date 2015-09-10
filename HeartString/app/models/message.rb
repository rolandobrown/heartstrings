class Message < ActiveRecord::Base
  belongs_to :sender, :class_name => "User"
  belongs_to :receiver, :class_name => "User"

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
end
