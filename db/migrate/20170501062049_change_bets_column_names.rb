class ChangeBetsColumnNames < ActiveRecord::Migration[5.0]
  def change
  	rename_column :bets, :odds_win, :home_win
  	rename_column :bets, :odds_draw, :draw
  	rename_column :bets, :odds_lose, :away_win
  end
end
