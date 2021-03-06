class Place < ActiveRecord::Base
	belongs_to :user
	has_many :comments
	has_many :pics

	validates :name, :presence => true, length: { minimum: 3 }, uniqueness: { case_sensitive: false }
	validates :address, :presence => true
	validates :description, :presence => true

	geocoded_by :address # this might need to be done by a custom method
	after_validation :geocode


end
