class Response < ApplicationRecord
    belongs_to :card
    # belongs_to :user
    belongs_to :topic, through :cards
end
