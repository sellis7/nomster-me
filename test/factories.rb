# Acts in way that "fixtures" would - sample data

FactoryGirl.define do
	factory :user do
		email "santaclaus@northpole.com"
		password "hohohoho"
	end

	factory :place do
		name "Cool Location"
		address "1313 Mockingbird Lane, Chicago, IL"
		description "Best place to be when you need to be somewhere to do this."

		association :user

	end

	factory :comment do
		message "Neatest place I've ever been!"
		rating '3_stars'

		association :user
		association :place
	end

end
