FactoryGirl.define do
  factory :podcast do
    name "Testcast"
    description "This is a test podcast"
  end
  factory :user do
    podcasts {[FactoryGirl.create(:podcast)]}
    username "Luke"
    password "Password123"
  end
end
