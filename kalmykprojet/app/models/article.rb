class Article < ApplicationRecord

	belongs_to :user
	has_many :article_subjects
	has_many :subjects, through: :article_subjects
	
	has_many :comments, :dependent => :destroy
	has_many :users, through: :comments

	# validates :title, :body, presence: true

	accepts_nested_attributes_for :subjects

  	def subjects_attributes=(subject_attributes)
  		subject_attributes.values.each do |subject|
	  		subject = Subject.find_or_create_by(subject)
	  		self.subjects << subject
  		end
  	end
end
