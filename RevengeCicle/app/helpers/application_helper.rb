module ApplicationHelper
  def take_vote
        if params[:vote_type] == "up"
          Comment.find(params[:comment_id]).up_vote
        elsif params[:vote_type] == "down"
          Comment.find(params[:comment_id]).down_vote
        end
  end
end
