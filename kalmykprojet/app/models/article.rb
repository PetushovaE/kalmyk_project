class Article < ApplicationRecord
	has_many :comments
	belongs_to :subject
	has_many :users, through: :comments
end
