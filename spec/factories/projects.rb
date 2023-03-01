FactoryBot.define do
  factory :project do
    name { "MyString" }
    description { "MyText" }
    status { "MyString" }
    user
  end
end
