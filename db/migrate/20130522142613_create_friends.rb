class CreateFriends < ActiveRecord::Migration
  def change
    create_table :friends do |t|
      t.string :fullname
      t.string :nickname
      t.string :email
      t.integer :phone
      t.string :website
      t.integer :friendshiplevel

      t.timestamps
    end
  end
end
