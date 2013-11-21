class CommentsController < ActionController::Base
  def create
    @comment = Comment.create author: params[:comment][:author], body: params[:comment][:body]
    # render  "posts/show.html.erb"
    redirect_to posts_path
  end

end
