class Idea < ApplicationRecord
	mount_uploader :picture, PictureUploader
	# Add relationship to comments
	has_many :comments
	belongs_to :user
end
