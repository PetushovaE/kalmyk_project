class CommentSerializer < ActiveModel::Serializer
  attributes :id, :content

  def self.serialize(comment)
    # start with the open brace to create a valid JSON object
    serialized_comment = '{'
    
    serialized_comment += '"id": ' + comment.id.to_s + ', '
    
    serialized_comment += '"content": "' + comment.content + '", '

    # and end with the close brace
    serialized_comment += '}'
  end
end
 
