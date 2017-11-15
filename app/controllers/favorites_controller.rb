class FavoritesController < ApplicationController
  def create
    @favorite = Favorite.create(user_id: current_user.id, recommend_id: params[:recommend_id])
    @favorites = Favorite.where(recommend_id: params[:recommend_id])
    @recommends = Recommends.all
  end
  def destroy
    favorite = Favorite.find_by(user_id: current_user.id, recommend_id: params[:recommend_id])
    favorite.destroy
    @favorites = Favorite.where(recommend_id: params[:recommend_id])
    @recommend = Recommend.all
  end
end
