FactoryGirl.define do
  factory :user do
    username "Luke"
    password "Password123"
  end
  factory :podcast do
    name "Testcast"
    description "This is a test podcast"
  end
end
