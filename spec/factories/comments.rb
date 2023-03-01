FactoryBot.define do
  factory :comment do
    content { "MyText" }
    user
    project
  end
end
