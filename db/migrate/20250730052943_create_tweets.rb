class CreateTweets < ActiveRecord::Migration[7.2]
  def change
    create_table :tweets do |t|
      t.string :genre
      t.string :title
      t.string :student
      t.string :place
      t.text :content

      t.timestamps
    end
  end
end
