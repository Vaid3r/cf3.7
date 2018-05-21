require 'rails_helper'

describe Product do 
  context 'when the product has comments' do
      let(:product) { Product.create!(name: "Bike", description: "Cruiser Bike", color: "green", price: "198.99", image_url: "babybluecruiserbike.jpeg") }
      let (:user) {User.create!(first_name: "storm", last_name:"luna", email: "stormsinferno@gmail.com", password: "pigdreams")}
      
  
    it "returns the average rating of all comments" do
      product.comments.create!(rating: 1, user: user, body: "Awful bike!")
      product.comments.create!(rating: 3, user: user, body: "Ok bike!")
      product.comments.create!(rating: 5, user: user, body: "Great bike!")
      expect(product.average_rating).to eq(3)
    end
    it "is not valid without a name" do
      expect(Product.new(description:"Nice Bike")).not_to be_valid
    end
  end
end