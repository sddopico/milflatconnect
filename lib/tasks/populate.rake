namespace :db do
  	task populate: :environment do
  	require 'ffaker'

		#users
		1000.times do
		name = FFaker::Name.name
			 User.create(
				email: name + mil,
				password: 'password',
				name: name
			)
		end
		
		#flats
		(1..500).each do |n|
			user = n	
			tagline = FFaker::Lorem.phrase
			description = FFaker::Lorem.paragraph
			address = FFaker::Address.street_address
			city = FFaker::Address.city
			Flat.create(
				tagline: tagline,
				available_date: '2015-05-22',
				address: address,
				city: city,
				base: base.sample,
				description: description,
				bedroom: bedroom.sample,
				bathroom: bathroom.sample,
				price: price.sample,
				sec_deposit: 475,
				cleaning_fee: 250,
				house_rules: 'no smoking',
				user_id: user
			)
		end
		
		#comments
		1500.times do
			comment = FFaker::Lorem.phrase
			 Comment.create(
				user_id: rated.sample,
				commentor_id: commentor.sample,
				comment: comment,
				date_filed: '2015-05-22'
			)
		end		
	end
end

def mil
	['@us.army.mil'].sample
end
def rated
	(1..500).to_a.shuffle
end
def base
	["Fort Hood", "Fort Gordon", "Fort Stewart", "Fort Benning", "Fort Irwin", "Fort Sill", "Fort Bliss", "Fort Drum", "Fort Lewis"].to_a.shuffle
end
def commentor
	(501..1000).to_a.shuffle
end
def bedroom
	(1..4).to_a.shuffle
end
def bathroom
	(1..3).to_a.shuffle
end
def price
	[1000, 1100, 1200, 1300].sample
end