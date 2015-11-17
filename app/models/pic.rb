class Pic < ActiveRecord::Base
	belongs_to: place

	mount_uploader :picture, PictureUploader
	attr_accessible :picture
end
