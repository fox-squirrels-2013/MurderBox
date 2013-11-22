require 'spec_helper'

describe PostsController do

  describe "home page" do
    it "#index" do
      get :index
      response.status.should eq 200
    end

    xit "#show" do
      get :show
      response.status.should eq 200
    end

    it "#create" do
      post :create, post:{title: 'title here', body: 'content here', author: 'Miya', revengemail: 'miya@miya.com'}
      response.status.should eq 200
      # response.should render_template(:index)
    end

    it "creates a post with valid params" do
      expect {
        post :create, post:{title: 'title here', body: 'content here', author: 'Miya', revengemail: 'miya@miya.com'}
      }.to change{Post.count}.by(1)
    end

    it "doesn't create a post when params are invalid" do
      expect {
        post :create, post:{title: '', body: '', author: '', revengemail: ''}
      }.to_not change{Post.count}.by(1)
    end
  end

end
