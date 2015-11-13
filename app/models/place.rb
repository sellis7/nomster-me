class Place < ActiveRecord::Base
	belongs_to :user

	geocoded_by :address # this might need to be done by a custom method
	after_validation :geocode

	validates :name, :presence => true, length: { minimum: 3 }, uniqueness: { case_sensitive: false }
	validates :address, :presence => true
	validates :description, :presence => true


end
