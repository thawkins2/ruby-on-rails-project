class CreateBets < ActiveRecord::Migration[5.0]
  def change
    create_table :bets do |t|
      t.string :match
      t.float :odds_win
      t.float :odds_draw
      t.float :odds_lose

      t.timestamps
    end
  end
end
