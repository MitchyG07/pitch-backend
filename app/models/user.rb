class User < ApplicationRecord
    has_secure_password
    has_many :experiences
    has_many :intervals, through: :experiences
end
