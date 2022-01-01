FactoryBot.define do
  factory :post do
    title { Faker::Lorem.sentence.chomp(".") }
    summary { Faker::Lorem.paragraph(sentence_count: 6) }
    date { Date.today }
    is_published { true }
  end
end
