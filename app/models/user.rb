class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
       :recoverable, :rememberable, :validatable
  has_many :tweets
  has_many :taito_likes, dependent: :destroy
  has_many :liked_tweets, through: :taito_likes, source: :tweet

  def already_liked?(tweet)
    self.taito_likes.exists?(tweet_id: tweet.id)
  end

end