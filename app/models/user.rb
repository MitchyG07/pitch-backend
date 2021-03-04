class User < ApplicationRecord
    has_secure_password
    has_many :experiences
    has_many :intervals, through: :experiences
    has_many :chord_leaderboards
    has_many :chord_games, through: :chord_leaderboards
end
