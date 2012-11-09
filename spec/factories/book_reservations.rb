FactoryGirl.define do
  factory :book_reservation do
  	start_date Date.today
  	due_date Date.today + 3
  end
end