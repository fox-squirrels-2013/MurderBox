include ApplicationHelper

class CommentsController < ActionController::Base

  def create
     comment = Comment.new(params[:comment])
    if comment.save
      render partial: "posts/comment", locals: { comment: comment, top_comment: Comment.where("post_id = ?", params[:comment][:post_id]).order("votes DESC").first}
    else
      render status: :unprocessable_entity, text: comment.errors.full_messages.join('<br>')
    end
  end


  def update
    @comment = Comment.find(params[:comment_id])
    if @comment.post.comments.order("votes DESC").first.votes < 50 && session[params[:comment_id].to_sym] != true

    case params[:vote_type]
      when "up"
          @comment.up_vote
      when "down"
          @comment.down_vote
      end
    end

    session[params[:comment_id].to_sym] = true
    redirect_to posts_path + "/#{params[:post_id]}"
  end

end
