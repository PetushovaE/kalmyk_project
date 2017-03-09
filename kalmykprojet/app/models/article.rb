class Article < ApplicationRecord
	has_many :comments, :dependent => :destroy
	has_many :commenters, through: :comments

	belongs_to :author, :class_name => "User"

	validates :title, :body, presence: true
end
