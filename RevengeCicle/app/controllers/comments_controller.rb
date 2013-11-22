include ApplicationHelper

class CommentsController < ActionController::Base
  def create
    @comment = Comment.create author: params[:comment][:author], body: params[:comment][:body]
    redirect_to posts_path
  end

  def update
    if Comment.where("post_id = ?", params[:post_id]).order("votes DESC").first.votes < 50
      if session[params[:post_id].to_sym] != true
        take_vote
      end
    end
    session[params[:post_id].to_sym] = true
    redirect_to posts_path + "/#{params[:post_id]}"
  end

end
