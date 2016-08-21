#
class UserSerializer < ActiveModel::Serializer
  attributes :id, :email
  # has_many :beats
end
