

require 'rails_helper'

describe Product do
  context "when the product has comments" do
    let(:product) { Product.create!(name: "Bike", description: "Cruiser Bike", color: "green", price: "198.99", image_url: "babybluecruiserbike.jpeg") }
    let(:user) { User.create!(email: "testingemail@testemail.com", password: "tetsing123456") }
    before do
      product.comments.create!(rating: 1, user: user, body: "Test product comment #1")
      product.comments.create!(rating: 3, user: user, body: "Test product comment #2")
      product.comments.create!(rating: 5, user: user, body: "Test product comment #3")
    end

    it "returns the average rating of all comments" do
      expect(product.comments.average(:rating)).to eq 3
    end
    it "is not valid without a name" do
      expect(Product.new(description: "Testing is not valid without a name")).not_to be_valid
    end
  end
end