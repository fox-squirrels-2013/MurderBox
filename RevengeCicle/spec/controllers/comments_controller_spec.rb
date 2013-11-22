require 'spec_helper'

describe CommentsController do

  describe "comment page" do
    xit "#create" do
      get :index
      response.status.should eq 200
    end

    xit "#update" do
      get :index
      response.status.should eq 200
    end

  end
end