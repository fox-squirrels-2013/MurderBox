require 'spec_helper'

describe "home page" do

  let!(:post) {
    post = Post.new
    post.title = "post title"
    post.body = "post body"
    post.author = "miya"
    post.revengemail = "miya@miya.com"
    post.save
  }

  it "can see list of all posts" do
    visit root_path
    expect(page).to have_content(:post)
  end

  it "can create a post" do
    visit root_path
    fill_in("post[title]", with: "Title")
    fill_in("post[body]", with: "Body")
    fill_in("post[author]", with: "Miya")
    fill_in("post[revengemail]", with: "miya@miya.com")
    click_button("Murder Time ...")
    expect(page).to have_content("Title")
  end

  it "can click on a post" do
    visit root_path
    click_on "post title"
    expect(page).to have_content "post body"
  end

end