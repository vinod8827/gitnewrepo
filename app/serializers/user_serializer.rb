class UserSerializer < ActiveModel::Serializer
  attributes :id
  attributes :email
  attrinutes :created_at
  attributes :update_at
end
