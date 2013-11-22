require 'spec_helper'

describe Comment do
  it { should validate_presence_of(:body)}
  it { should validate_presence_of(:author)}


  describe "#initialize" do
    it "Our Comment model exists" do
      Comment.new.should be_an_instance_of Comment
    end

  end
end