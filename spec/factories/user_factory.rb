

FactoryBot.define do
  sequence(:email) {|n| "user#{n}@testuser.com"}
  
  factory :user do
    email
    password "test123"
    first_name "Test"
    last_name "User"
    admin false
  end
end