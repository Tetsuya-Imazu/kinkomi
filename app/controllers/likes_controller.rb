class LikesController < ApplicationController
  before_action :post_params

  def create
    @like = Like.create(user_id: current_user.id, post_id: @post.id)
  end
  
  def destroy
    @like = Like.find_by(user_id: current_user.id, post_id: @post.id).destroy
  end

  private

  def post_params
    @post = Post.find(params[:id])
  end
end