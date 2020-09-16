class MenusController < ApplicationController
  before_action :authenticate_user!
  
  def chest
    @posts = Post.where(category_id: 2).order("created_at DESC")
  end

  def back
    @posts = Post.where(category_id: 3).order("created_at DESC")
  end

  def shoulder
    @posts = Post.where(category_id: 4).order("created_at DESC")
  end

  def arm
    @posts = Post.where(category_id: 5).order("created_at DESC")
  end

  def leg
    @posts = Post.where(category_id: 6).order("created_at DESC")
  end

  def trunk
    @posts = Post.where(category_id: 7).order("created_at DESC")
  end

end