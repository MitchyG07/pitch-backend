class PerfectGamesController < ApplicationController

    def index
        perfects = PerfectGame.all
        render json: perfects
    end

    def show
        perfect = PerfectGame.find(params[:id])
        render json: perfect, include: [:users]
    end

    def create
        perfect = PerfectGame.create(perfect_params)
        render json: perfect
    end

    private 

    def perfect_params
        params.require(:perfect_game).permit(:points)
    end

end
