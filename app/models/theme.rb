class Theme < ActiveRecord::Base
  has_many :loved_ones, through: :messages
end
