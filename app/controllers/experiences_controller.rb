class ExperiencesController < ApplicationController

    def index
        experiences = Experience.all
        render json: experiences
    end

    def create
        experience = Experience.create(experience_params)
        render json: experience
    end

    private 

    def experience_params
        params.require(:experience).permit(:user_id, :interval_id)
    end

end
