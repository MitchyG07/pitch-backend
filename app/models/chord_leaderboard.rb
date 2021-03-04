class ChordLeaderboard < ApplicationRecord
  belongs_to :user
  belongs_to :chord_game
end
