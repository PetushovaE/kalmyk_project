class ArticleSubject < ApplicationRecord
	belongs_to :article
	belongs_to :subject
end
