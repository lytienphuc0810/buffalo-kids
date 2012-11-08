FactoryGirl.define do
  factory :user do
    sequence(:email) {|n| "email#{n}@example.com" }
    sequence(:username) {|n| "username#{n}" }
    password "123456"
    password_confirmation "123456"
  end

  factory :unconfirmed_user, :parent => :user do
    confirmation_token "confirmation_token"
  end

  factory :confirmed_user, :parent => :user do
    confirmation_token nil
    confirmation_sent_at Time.now
    confirmed_at Time.now
  end
end