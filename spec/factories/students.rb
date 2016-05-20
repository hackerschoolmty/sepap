FactoryGirl.define do
  factory :student do
    name { FFaker::Name.name }
    last_name { FFaker::Name.last_name }
    email { FFaker::Internet.email }
  end
end
