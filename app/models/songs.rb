class Song < ActiveRecord::Base
  has_many :loved_ones, through: :keepsakes
end
