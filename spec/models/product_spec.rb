require 'rails_helper'
 
describe Product do

    before do
      @product = Product.create(name: "Cruiser Bike", description: "Simple Bike", color: "baby blue", price: "179.99", image_url: "babybluecruiserbike.jpeg")
      @user = User.create(first_name: "Peter", last_name: "Example", email: "peter@example.com", password: "1234567890")
      @product.comments.create!(rating: 1, user: @user, body: "Awlful bike!")
      @product.comments.create!(rating: 3, user: @user, body: "This is a great bike!")
      @product.comments.create!(rating: 5, user: @user, body: "This product is fantastic")
    end
 
    it "returns the average rating of the comments" do
      expect(@product.average_rating).to eq 3
    end 

    it "is not valid without a name" do
      expect(Product.new(description: "Other bike")).not_to be_valid
    end  
end