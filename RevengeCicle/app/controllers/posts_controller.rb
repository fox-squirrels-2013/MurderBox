class PostsController < ActionController::Base
  def show
    puts params
    @post = Post.find(params[:id])
    @comment = Comment.new
  end


end
