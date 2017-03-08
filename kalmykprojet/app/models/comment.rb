class Comment < ApplicationRecord
	belongs_to :article
	belongs_to :user

	validates :content, :presence =>{message: "Cannot be blank"}
end
