require 'spec_helper'

describe "Comments Request" do
	it "creates an upvote when the upvote button is clicked" do
    post = Post.create(title: "fake", body: "fake", author: "fake", revengemail:"fake")
    comment = Comment.create(:author => 'Miya', :body => 'this is the body', :post_id => post.id)
    expect{
		put comment_path(comment), {comment_id: comment.id, vote_type: 'up', post_id: post.id}
    comment.reload
		}.to change{comment.votes}.by(1)
	end

	it "lowers the upvote when the downvote button is clicked" do
    post = Post.create(title: "fake", body: "fake", author: "fake", revengemail:"fake")
    comment = Comment.create(:author => 'Miya', :body => 'this is the body', :post_id => post.id)
    expect{
    put comment_path(comment), {comment_id: comment.id, vote_type: 'down', post_id: post.id}
    comment.reload
    }.to change{comment.votes}.by(-1)
  end

end