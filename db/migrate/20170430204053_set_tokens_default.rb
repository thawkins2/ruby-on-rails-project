class SetTokensDefault < ActiveRecord::Migration[5.0]
  def change
  	change_column :users, :tokens, :integer, :default => 100
  end
end
