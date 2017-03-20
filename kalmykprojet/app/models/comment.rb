class Comment < ApplicationRecord
	
	belongs_to :article
	belongs_to :user

	validates :content, :presence =>{message: "Cannot be blank"}

	accepts_nested_attributes_for :user

  	def user_attributes=(user_attributes)
  		user_attributes.values.each do |u|
  		self.user = User.find_or_create_by(name: u) if u != ""
  	end
  end
end
