require 'spec_helper'

describe CommentsController do

  describe "comment page" do

    xit "#create" do
      post :create, comment:{body: 'body here', author: 'Miya'}
      response.status.should eq 200
    end

    xit "#update" do
    end

    it "creates a comment with valid params" do
      expect {
        post :create, comment:{body: 'body here', author: 'Miya'}
      }.to change{Comment.count}.by(1)
    end

    it "doesn't create a comment when params are invalid" do
      expect {
        post :create, comment:{body: '', author: ''}
      }.to_not change{Comment.count}.by(1)
    end

  end
end