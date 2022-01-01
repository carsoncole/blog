include FactoryBot::Syntax::Methods

(1..10).each do
  create(:post, date: Date.today - rand(100).days, content: Faker::Lorem.paragraph(sentence_count: 20))
end
