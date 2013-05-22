class ChangeFriendshiplevelTypeInFriend < ActiveRecord::Migration
  def change
  	change_column :friends, :friendshiplevel, :string
  end
end