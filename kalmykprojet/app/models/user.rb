class User < ApplicationRecord
	mount_uploader :picture, PictureUploader
	has_many :comments
	has_many :articles, through: :comments

	has_secure_password
end
