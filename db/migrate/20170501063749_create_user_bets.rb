class CreateUserBets < ActiveRecord::Migration[5.0]
  def change
    create_table :user_bets do |t|
      t.integer :bet_id
      t.string :user_selection
      t.integer :user_id
      t.integer :amount_bet

      t.timestamps
    end
  end
end
