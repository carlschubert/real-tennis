class Match < ActiveRecord::Base

  attr_accessible :winner, :user_id

  belongs_to :user
  has_many :games


end
