class Author < ApplicationRecord
	
	has_many :articles
	# has_many :comments, through: :articles
	
	has_secure_password
end