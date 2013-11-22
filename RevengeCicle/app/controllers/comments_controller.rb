include ApplicationHelper

class CommentsController < ActionController::Base

  def create
    # Comment.create author: params[:comment][:author], body: params[:comment][:body]
     comment = Comment.new(params[:comment])
    # redirect_to posts_path
    # redirect_to posts_path + "/#{params[:comment][:post_id]}"
    if comment.save
      render partial: "posts/comment", locals: { comment: comment, food: "french fries", top_comment: Comment.where("post_id = ?", params[:comment][:post_id]).order("votes DESC").first
}
    else
      render status: :unprocessable_entity, text: comment.errors.full_messages.join('<br>')
    end
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
