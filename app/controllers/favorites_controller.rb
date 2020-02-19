class FavoritesController < ApplicationController

  protect_from_forgery except: [:create]

  def create
    @favorite = Favorite.new(user_id: current_user.id, item_id: params[:item_id])
    @favorite.save
  end

  def destroy
    @favorite = Favorite.find_by(user_id: params[:user_id], item_id: params[:item_id])
    @favorite.destroy
  end

end