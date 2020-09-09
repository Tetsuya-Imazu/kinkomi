class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = Usr.new(user_params)
    if @user.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @posts = Post.includes(:user).order("created_at DESC")
    @user = User.find(params[:id])
    @nickname = @user.nickname
    @posts = @user.posts
  end
end
