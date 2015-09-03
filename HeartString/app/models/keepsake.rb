class Keepsake < ActiveRecord::Base
  belongs_to :user, through: :message
end
