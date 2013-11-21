class PostsController < ApplicationController
  def index
    @posts = Post.all
    @post = Post.new
  end

  def show
    @post = Post.find(params[:id])
    @comment = Comment.all.find_by post_id: params[:id]
  end

  def create
    @post = Post.new(params[:post])
    if @post.save
      redirect_to posts_path
    else
      @posts = Post.all
      render :index
    end
  end

end

