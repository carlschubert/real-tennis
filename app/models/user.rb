class User < ActiveRecord::Base
  has_secure_password

  validates :password, :name, presence: true
  validates :name, uniqueness: true

  attr_accessible :name, :password, :password_confirmation
  has_many :games
  has_many :matches


end
