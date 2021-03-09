class PerfectGame < ApplicationRecord
    has_many :perfect_leaderboards
    has_many :users, through: :perfect_leaderboards
end
