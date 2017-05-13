class CreateDiscussions < ActiveRecord::Migration[5.0]
  def change
    create_table :discussions do |t|
      t.string :title
      t.text :content
      t.integer :user_id
      t.datetime :time

      t.timestamps
    end
  end
end
