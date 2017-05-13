class AddIndexToUsersBets < ActiveRecord::Migration[5.0]
  def change
    add_index :user_bets, [:user_id, :created_at]
  end
end
