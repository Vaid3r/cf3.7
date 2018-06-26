FactoryBot.define do
  factory :comment do
    user_id 1
    body 'Test comment'
    rating 4
  end

  factory :product do
    name "Test Bike"
    description "A bike"
    image_url "bike.jpg"
    colour "white"
    price "2800"
  end
end