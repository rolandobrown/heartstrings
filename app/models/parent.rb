class Parent < ActiveRecord::Base
  has_many :themes
  has_many :loved_ones
  has_many :messages, through: :themes
end
