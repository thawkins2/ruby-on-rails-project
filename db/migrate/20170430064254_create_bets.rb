class CreateBets < ActiveRecord::Migration[5.0]
  def change
    create_table :bets do |t|
      t.string :match
      t.float :home_win
      t.float :draw
      t.float :away_lose

      t.timestamps
    end
  end
end
