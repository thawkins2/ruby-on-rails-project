class AddBetOddsToUserBetsTable < ActiveRecord::Migration[5.0]
  def change
  	add_column :user_bets, :bet_odds, :float 
  end
end
