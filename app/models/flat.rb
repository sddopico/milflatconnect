class Flat < ActiveRecord::Base
	BASE_NAMES = ["Fort Hood", "Fort Gordon", "Fort Stewart", "Fort Benning", "Fort Irwin", "Fort Sill",
				  "Fort Bliss", "Fort Drum", "Fort Lewis"]
	
	belongs_to :user
	attachment :photo
end
