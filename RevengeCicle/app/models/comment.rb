class Comment < ActiveRecord::Base
  belongs_to :post
  def up_vote
    self.votes += 1
    self.save
  end
  def down_vote
    self.votes -= 1
    self.save
  end
end
