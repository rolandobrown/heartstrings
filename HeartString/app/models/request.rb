class Request < ActiveRecord::Base
  belongs_to :sender, :class_name => "User"
  has_many :recievers, :class_name => "User"
end
