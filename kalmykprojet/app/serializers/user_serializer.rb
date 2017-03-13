class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :city, :email, :password
  
end
