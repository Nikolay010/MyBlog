require "rails_helper"

describe Category do
  it "is valid title" do
    cat = Category.new title: "hero"
    expect(cat).to be_valid
  end

  it "is not valid" do
    cat = Category.new title: nil
    expect(cat).to_not be_valid
  end
end