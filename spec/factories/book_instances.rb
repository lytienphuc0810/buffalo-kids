FactoryGirl.define do
  factory :book_instance do
  	sequence(:book_instance_code) {|n| "book_instance_code#{n}" }
  end
end