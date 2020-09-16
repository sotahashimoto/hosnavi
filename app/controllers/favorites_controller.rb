class FavoritesController < ApplicationController
  def create
    @favorite = current_member.favorites.create(comment_id: params[:comment_id])
  end

  def destroy
    @comment = Comment.find(params[:comment_id])
    @favorite = current_member.favorites.find_by(comment_id: @comment.id)
    @favorite.destroy
  end
end
