class Article < ApplicationRecord
	has_many :comments
	belongs_to :subject
end
