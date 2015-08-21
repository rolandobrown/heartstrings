class LovedOne < ActiveRecord::Base
  has_many :messages, through: :themes
  has_many :loved_ones
  has_many :parents
end

#Todo:1 Figure out how to model for LovedOnes that has_many :parents
