class Request < ActiveRecord::Base
  belongs_to :sender, :class_name => "User"
  has_one :reciever, :class_name => "User"
end
