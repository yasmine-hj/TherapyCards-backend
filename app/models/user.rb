class User < ApplicationRecord
    has_secure_password
    has_many :responses
    has_many :cards, through: :responses
end
