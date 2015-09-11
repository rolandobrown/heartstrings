task whatever: :environment do
  time = Time.zone.now
  posts = Post.scheduled.where(published_at: (time.beginning_of_day..time.end_of_day))
  posts.update_all(status: "Send Now")

  # Delivers Heartstring to website.

end
