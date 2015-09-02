class Message < ActiveRecord::Base
  belongs_to :sender, :class_name => "LovedOne"
  belongs_to :reciever, :class_name => "LovedOne"
end
