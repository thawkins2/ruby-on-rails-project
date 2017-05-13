class Bet < ApplicationRecord
	has_and_belongs_to_many :user_bets
end
