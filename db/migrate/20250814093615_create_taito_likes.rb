class CreateTaitoLikes < ActiveRecord::Migration[7.2]
  def change
    create_table :taito_likes do |t|
      t.references :tweet, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
