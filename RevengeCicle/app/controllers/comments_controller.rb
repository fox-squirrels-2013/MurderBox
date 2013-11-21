class CommentsController < ActionController::Base
  def create
    @comment = Comment.create author: params[:comment][:author], body: params[:comment][:body]
    # render  "posts/show.html.erb"
    redirect_to posts_path
  end

  def update
    if params[:vote_type] == "up"
      Comment.find(params[:comment_id]).up_vote
    elsif params[:vote_type] == "down"
      Comment.find(params[:comment_id]).down_vote
    end
    redirect_to posts_path + "/#{params[:post_id]}"
  end



end
