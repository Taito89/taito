class RemoveUserAuthColumnsFromTweets < ActiveRecord::Migration[7.2]
  def change
    remove_column :tweets, :email, :string
    remove_column :tweets, :encrypted_password, :string
    remove_column :tweets, :reset_password_token, :string
    remove_column :tweets, :reset_password_sent_at, :datetime
    remove_column :tweets, :remember_created_at, :datetime
  end
end
