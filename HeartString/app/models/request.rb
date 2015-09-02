class Request < ActiveRecord::Base
  belongs_to :sender_id, :class_name => "LovedOne"
  belongs_to :messages
end
