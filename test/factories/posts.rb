FactoryBot.define do
  factory :post do
    title { "MyString" }
    summary { "MyString" }
    author { "MyString" }
    date { "2021-12-31" }
    is_published { false }
  end
end
