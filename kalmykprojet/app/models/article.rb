class Article < ApplicationRecord
	has_many :comments, :dependent => :destroy
	has_many :users, through: :comments

	validates :title, :body, presence: true
end
