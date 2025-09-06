class RemoveUniqueIndexFromTweetsEmail < ActiveRecord::Migration[7.2]
  def change
    remove_index :tweets, name: "index_tweets_on_email"
  end
end
