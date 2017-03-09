class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :city, :email, :password
  has_many :articles
  has_many :comments
end
