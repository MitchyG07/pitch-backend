class IntervalsController < ApplicationController

    def index
        intervals = Interval.all
        render json: intervals
    end

    def show
        interval = Interval.find(params[:id])
        render json: interval
    end

    def create
        interval = Interval.create(interval_params)
        render json: interval
    end

    private 

    def interval_params
        params.require(:interval).permit(:points)
    end

end
