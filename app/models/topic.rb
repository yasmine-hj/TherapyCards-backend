class Topic < ApplicationRecord
    has_many :cards
    has_many responses, through :cards
end
