#config/schedule.rb file:

every 1.day do
  rake "publish_post"
end

#lib/tasks/post.rake
task publish_post: :environment do
  posts = post.scheduled.where(published_at: Time.zone.now..24.hours.from_now)
  #search for posts with the status of "Scheduled" and published_at in the next 24 hrs.
  posts.update_all(status: "Published")
end

#models/post.rb
class post < ActiveRecord::Base
  belongs_to :sender, :class_name => "User"
  has_one :receiver, :class_name => "User"
  has_many :keepsakes

  scope :draft,     ->{ where(status: "Draft") }
  scope :published, ->{ where(status: "Published") }
  scope :scheduled, ->{ where(status: "Scheduled") }
end
