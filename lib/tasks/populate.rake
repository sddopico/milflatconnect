namespace :db do
  	task populate: :environment do
  	require 'ffaker'

		#users
		10000.times do
		f_name = FFaker::Name.first_name
		l_name = FFaker::Name.last_name
			 User.create(
				email: f_name + '.' + l_name + mil,
				password: 'password',
				f_name: f_name,
				l_name: l_name,
				cell_num: '760-889-2461'
			)
		end
		
		#flats
		(1..5000).each do |n|
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
				bedroom: 3,
				bathroom: 2,
				price: 1275,
				sec_deposit: 475,
				cleaning_fee: 250,
				house_rules: 'no smoking',
				user_id: user
			)
		end
		
		#comments
		15000.times do
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
	(1..5000).to_a.shuffle
end
def base
	["Fort Hood", "Fort Gordon", "Fort Stewart", "Fort Benning", "Fort Irwin", "Fort Sill", "Fort Bliss", "Fort Drum", "Fort Lewis"].to_a.shuffle
end
def commentor
	(5001..10000).to_a.shuffle
end