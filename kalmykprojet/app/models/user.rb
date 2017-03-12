class User < ApplicationRecord
	mount_uploader :picture, PictureUploader


	# as author:
	has_many :articles, :foreign_key => 'author_id'

	# as commenter:
	has_many :comments, :foreign_key => 'commenter_id'

	has_secure_password

	# devise :omniauthable, :omniauth_providers => [:facebook]

	# validates :email, :presence => true
	# validates :email, :uniqueness => true

	def self.from_omniauth(auth_hash)
    	self.where(:email => auth_hash['info']['email']).first_or_create do |user|
      		user.password = SecureRandom.hex
    end
  end
end
