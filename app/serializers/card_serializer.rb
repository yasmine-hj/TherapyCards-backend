class CardSerializer < ActiveModel::Serializer
  attributes :id, :question
  belongs_to :topic
end
