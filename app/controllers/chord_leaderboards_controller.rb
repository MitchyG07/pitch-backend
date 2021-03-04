class ChordLeaderboardsController < ApplicationController

    def index
        chord_points = ChordLeaderboard.all
        render json: chord_points
    end

    def create
        chord_point = ChordLeaderboard.create(leaderboard_params)
        render json: chord_points
    end

    private 

    def leaderboard_params
        params.require(:experience).permit(:user_id, :chord_game_id)
    end

end
