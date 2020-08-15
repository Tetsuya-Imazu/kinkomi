class PostsController < ApplicationController
  before_action :set_post, only: [:edit, :show, :update, :destroy]

  def index
    @posts = Post.all.order("created_at DESC")
  end

  def new
    @post = Post.new
  end

  def create
    Post.create(post_params)
    redirect_to root_path
  end

  def destroy
    @post.destroy
    redirect_to root_path
  end

  def edit
  end

  def update
    @post.update(post_params)
    redirect_to root_path
  end

  def show
  end

  private

  def post_params
    params.require(:post).permit(:name, :description,)
  end

  def set_post
    @post = Post.find(params[:id])
  end
end
