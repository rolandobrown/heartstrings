class User < ActiveRecord::Base
  has_secure_password
  mount_uploader :avatar, AvatarUploader

  has_many :families
  has_many :roles
  has_many :messages, :foreign_key => 'receiver_id'
  has_many :messages, :foreign_key => 'sender_id'
  has_many :requests, :foreign_key => 'receiver_id'
  has_many :requests, :foreign_key => 'sender_id'
  has_many :keepsakes

end
