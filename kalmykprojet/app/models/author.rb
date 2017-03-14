class Author < ApplicationRecord
	
	has_many :articles
	
	# has_attached_file :avatar
 #  	validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
	
	has_secure_password
end