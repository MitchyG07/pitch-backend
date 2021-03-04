class ChordGame < ApplicationRecord
    has_many :chord_leaderboards
    has_many :users, through: :chord_leaderboards
end
