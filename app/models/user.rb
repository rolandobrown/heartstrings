class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :messages, :foreign_key => 'receiver_id'
  has_many :messages, :foreign_key => 'sender_id'

  validates_length_of       :password, :within => 4..40, :if => :password_required?
  validates_confirmation_of :password,                   :if => :password_required?

  validates_length_of       :email,    :within => 3..100

  validates_uniqueness_of   :username, :email, :case_sensitive => false

end
