require 'spec_helper'

describe "Comments Request" do
	it "creates an upvote when the upvote button is clicked" do
		expect{
		post = Post.create(title: "fake", body: "fake", author: "fake", revengemail:"fake")
		comment = Comment.create(:author => 'Miya', :body => 'this is the body', :post_id => post.id)
		put "/comments/#{comment.id}", {comment_id: comment.id, vote_type: 'up', post_id: post.id} 
		}.to change{comment.vote.count}.by(1)
	end

	it "lowers the upvote when the downvote botton is clicked"



end	