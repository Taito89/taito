class TaitoLikesController < ApplicationController
  before_action :authenticate_user!

  def create
    taito_like = current_user.taito_likes.create(tweet_id: params[:tweet_id])
    redirect_back(fallback_location: root_path)
  end

  def destroy
    taito_like = TaitoLike.find_by(tweet_id: params[:tweet_id], user_id: current_user.id)
    taito_like&.destroy
    redirect_back(fallback_location: root_path)
  end
end
