class Message < ActiveRecord::Base
  has_many :themes
  has_many :loved_ones, through: :themes
end
