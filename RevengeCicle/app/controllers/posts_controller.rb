class PostsController < ApplicationController
  def index
    @posts = Post.order("id DESC").limit(10)
    @post = Post.new
  end

  def show
    @post = Post.find(params[:id])
    @comment = Comment.new
  end

  def create
    post = Post.new(params[:post])
    if post.save
      render partial: "posts/post", locals: { post: post }
    else
      render status: :unprocessable_entity, text: post.errors.full_messages.join('<br>')
    end
  end

end

