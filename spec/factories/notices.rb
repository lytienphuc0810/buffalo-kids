FactoryGirl.define do
  factory :notice do
    sequence(:title) {|n| "Title#{n}" }
    sequence(:content) {|n| "Content#{n}" }
  end
end