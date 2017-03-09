class Comment < ApplicationRecord
	belongs_to :article
	belongs_to :commenter, :class_name => "User"

	validates :content, :presence =>{message: "Cannot be blank"}
end
