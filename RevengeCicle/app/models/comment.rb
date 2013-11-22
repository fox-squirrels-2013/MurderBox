class Comment < ActiveRecord::Base
  belongs_to :post

  validates :body, :presence => true
  validates :author, :presence => true

  def up_vote
    self.votes += 1
    self.save
  end
  def down_vote
    self.votes -= 1
    self.save
  end
end
