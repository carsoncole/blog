include FactoryBot::Syntax::Methods

(1..10).each do
  create(:post, date: Date.today - rand(100).days)
end
