class Flat < ActiveRecord::Base
	BASE_NAMES = ["Fort Hood", "Fort Gordon", "Fort Stewart", "Fort Benning", "Fort Irwin", "Fort Sill",
				  "Fort Bliss", "Fort Drum", "Fort Lewis"]
	
	belongs_to :user
	attachment :photo, type: :image
	
	geocoded_by :address
	after_validation :geocode
end
