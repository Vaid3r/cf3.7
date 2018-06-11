class Product < ApplicationRecord
	#validates :name, presence: true
	validates :name, :description, :image_url, :color, :price, presence: true

	has_many :orders

	has_many :comments


	def self.search(search_term)
		like_string = Rails.env.production? ? "iLike" : "like"
		Product.where("name #{like_string} ?", "%#{search_term}%")
	end


	def average_rating
		comments.average(:rating).to_f
	end
end
