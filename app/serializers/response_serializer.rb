class ResponseSerializer < ActiveModel::Serializer
  attributes :id, :response
  belongs_to :card
end
