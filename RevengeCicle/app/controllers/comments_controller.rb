class CommentsController < ActionController::Base
  def create
    @comment = Comment.create author: params[:comment][:author], body: params[:comment][:body]
    # render  "posts/show.html.erb"
    redirect_to posts_path
  end

  def update
    if Comment.where("post_id = ?", params[:post_id]).order("votes DESC").first.votes < 50

      if session[params[:post_id].to_sym] != 1

        if params[:vote_type] == "up"
          Comment.find(params[:comment_id]).up_vote
        elsif params[:vote_type] == "down"
          Comment.find(params[:comment_id]).down_vote
        end

      end

    end

    session[params[:post_id].to_sym] = 1
    redirect_to posts_path + "/#{params[:post_id]}"

  end



end
