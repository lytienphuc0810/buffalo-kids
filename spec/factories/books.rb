FactoryGirl.define do
  factory :book do
  	sequence(:title) {|n| "book#{n}" }
  	sequence(:book_code) {|n| "book_code#{n}" }
  end
end