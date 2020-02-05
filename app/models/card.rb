class Card < ApplicationRecord
    belongs_to :topic
    has_many :responses
end
