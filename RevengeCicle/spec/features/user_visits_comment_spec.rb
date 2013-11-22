require 'spec_helper'

describe "comment page" do

  let!(:comment) {
    comment = Comment.new
    comment.body = "comment body"
    comment.author = "miya"
    comment.save
  }

  xit "can see list of all comments" do
    visit comments_path
    expect(page).to have_content(:comment)
  end

  xit "can create a comment" do
    visit comments_path
    fill_in("comment[body]", with: "Body")
    fill_in("comment[author]", with: "Miya")
    click_button("Your Dis")
    expect(page).to have_content("Body")
  end

end