require 'spec_helper'

describe "home page" do

  let!(:comment) {
    comment = Comment.new
    comment.body = "comment body"
    comment.author = "miya"
    comment.save
  }

  it "can see list of all comments" do
    visit post_path
    expect(page).to have_content(:comment)
  end

  # it "can create a comment" do
  #   visit posts_path
  #   fill_in("post[title]", with: "Title")
  #   fill_in("post[body]", with: "Body")
  #   fill_in("post[author]", with: "Miya")
  #   fill_in("post[revengemail]", with: "miya@miya.com")
  #   click_button("Murder Time ...")
  #   expect(page).to have_content("Title")
  # end

#   it "can click on a post" do
#     visit root_path
#     click_on "post title"
#     expect(page).to have_content "post body"
#   end

end