class Request < ActiveRecord::Base
  belongs_to :sender_id, :class_name => "User"
  belongs_to :messages
end
