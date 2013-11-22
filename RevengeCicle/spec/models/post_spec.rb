require 'spec_helper'

describe Post do
  it { should validate_presence_of(:title)}
  it { should validate_presence_of(:body)}
  it { should validate_presence_of(:author)}
  it { should validate_presence_of(:revengemail)}


  describe "#initialize" do
    it "Our Post model exists" do
      Post.new.should be_an_instance_of Post
    end

  end
end