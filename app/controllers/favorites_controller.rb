class FavoritesController < ApplicationController
  def create
    micropost = Micropost.find_by(id: params[:micropost_id])
    current_user.favorite(micropost)
    flash[:success] = "お気に入りに登録しました"
    redirect_to :root
  end

  def destroy
    micropost = Micropost.find_by(id: params[:micropost_id])
    current_user.unfavorite(micropost)
    flash[:danger] = "お気に入りを解除しました"
    redirect_to :root
  end
end
