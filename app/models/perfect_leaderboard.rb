class PerfectLeaderboard < ApplicationRecord
  belongs_to :user
  belongs_to :perfect_game
end
