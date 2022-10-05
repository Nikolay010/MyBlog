require "rails_helper"

describe Post do

  it "post should be valid" do
    cat = Category.new title: "Sam"
    article = Post.new title: "rails", content: "bla-bla-bla", shared_url: "www.kherson.ua", category: cat
    expect(article).to be_valid
  end

  it "post should be not valid" do
    cat = Category.new title: "Sam"
    article = Post.new title: nil , content: "bla-bla-bla", shared_url: "www.kherson.ua", category: cat
    expect(article).to_not be_valid
  end
end