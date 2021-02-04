class Address < ApplicationRecord
	belongs_to :addressable, polymorphic: true

	geocoded_by :full_address, latitude: :lat, longitude: :lon
	after_validation :geocode 
	

	def full_address
		[street, city, state].compact.join(', ')
  end	
end
