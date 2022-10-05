FactoryBot.define do
	factory :post do
		title { Faker::Book.title }
		content { Faker::Beer.name }
		shared_url { Faker::Internet.url}
		association :categories, factory: :category
	end
end