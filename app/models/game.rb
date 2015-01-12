class Game < ActiveRecord::Base

  attr_accessible :score, :compscore, :winner, :user_id, :match_id

  belongs_to :user
  belongs_to :match

end
