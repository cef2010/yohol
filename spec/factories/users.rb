FactoryGirl.define do
  factory :user, class: User do
    sequence(:email) {|n| "user#{n}@example.com"}
    password "password"
    user_name "yohol"
    description "I am all about that yohol gurl"
    days_left 365
  end
end
