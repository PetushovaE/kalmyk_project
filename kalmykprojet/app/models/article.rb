class Article < ApplicationRecord

	belongs_to :author
	
	has_many :comments, :dependent => :destroy
	has_many :users, through: :comments

	
	# has_many :subjects, through: :article
	# accepts_nested_attributes_for :subjects


	# validates :title, :body, presence: true

	# def subjects_attributes=(subject_attributes)
 #    	subject_attributes.values.each do |subject_attribute|
 #      		subject = Subject.find_or_create_by(subject_attribute)
 #      		self.subjects << subject
 #    	end
 #  	end
end
