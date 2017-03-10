class ArticleSerializer < ActiveModel::Serializer
  attributes :id, :title, :body
  belongs_to :user
  has_many :comments

  def self.serialize(article)
    # start with the open brace to create a valid JSON object
    serialized_article = '{'
    
    serialized_article += '"id": ' + article.id.to_s + ', '
    serialized_article += '"title": "' + article.title + '", '
    serialized_article += '"body": "' + article.body + '", '

    # and end with the close brace
    serialized_article += '}'
  end
end
