class PerfectLeaderboardsController < ApplicationController


    def index
        perfect_points = PerfectLeaderboard.all
        render json: perfect_points
    end

    def create
        perfect_point = PerfectLeaderboard.create(leaderboard_params)
        render json: perfect_point
    end

    private 

    def leaderboard_params
        params.require(:perfect_leaderboard).permit(:user_id, :perfect_game_id)
    end

end
