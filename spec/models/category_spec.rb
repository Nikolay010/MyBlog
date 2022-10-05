require "rails_helper"

describe Category do
  it "is valid title" do
    expect(FactoryBot.build(:category)).to be_valid
  end

  it "is not valid" do
    cat = Category.new title: nil
    expect(cat).to_not be_valid
  end

  it "should not be duplicate" do
    cate = Category.create title: "Svonson"

    cat = Category.create title: "Svonson"

    expect(cat.errors[:title]).to include("has already been taken")
    expect(cat).to_not be_valid
  end
end