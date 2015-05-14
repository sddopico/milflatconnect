namespace :db do
  	task populate: :environment do
  	require 'ffaker'

		#users
		10000.times do
		f_name = FFaker::Name.first_name
		l_name = FFaker::Name.last_name
		cell_num = FFaker::PhoneNumber.phone_number
			 User.create(
				email: f_name + '.' + l_name + mil,
				password: 'password',
				f_name: f_name,
				l_name: l_name,
				cell_num: cell_num
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
				base: 'Fort Hood',
				description: description,
				bedroom: 3,
				bathroom: 2,
				price: 1275,
				sec_deposit: 475,
				cleaning_fee: 250,
				house_rules: 'no smoking',
				photo_id: '20edb8adda08a8ea95bd0f47d79a673e6f4d427346704800c87e741ec274',
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
def commentor
	(5001..10000).to_a.shuffle
end