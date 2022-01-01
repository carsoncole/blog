FactoryBot.define do
  factory :post do
    title { Faker::Lorem.sentence.chomp(".") }
    content { Faker::Lorem.paragraph(sentence_count: 20, supplemental: false, random_sentences_to_add: 40) }
    date { Date.today }
    is_published { true }
  end
end
