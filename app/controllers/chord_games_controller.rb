class ChordGamesController < ApplicationController


    def index
        chords = ChordGame.all
        render json: chords
    end

    def show
        interval = ChordGame.find(params[:id])
        render json: chords, include: [:users]
    end

    def create
        chord = ChordGame.create(chord_params)
        render json: chord
    end

    private 

    def chord_params
        params.require(:chord_game).permit(:points)
    end

end
