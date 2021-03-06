class User < ApplicationRecord
	mount_uploader :picture, PictureUploader

	has_many :comments
	has_many :articles

	has_many :votes
	
	has_secure_password

	# validates :email, :presence => true
	# validates :email, :uniqueness => true

	def self.from_omniauth(auth_hash)
    	self.where(:email => auth_hash['info']['email']).first_or_create do |user|
      		user.password = SecureRandom.hex
    end
  end
end
