class UserBet < ApplicationRecord
	belongs_to :user
	#has_and_belongs_to_many :bets
  validates :user_id, presence: true
end
