class LovedOne < ActiveRecord::Base
  has_many :themes
  has_many :messages, through: :themes
  belongs_to :parents
end
