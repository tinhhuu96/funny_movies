class CreateUserShares < ActiveRecord::Migration[5.2]
  def change
    create_table :user_shares do |t|
      t.string :link
      t.text :description
      t.integer :user_id
      t.string :type
      
      t.timestamps
    end
  end
end
