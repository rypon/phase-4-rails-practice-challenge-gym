class GymsController < ApplicationController
    
    def index
        gyms = Gym.all
        render json: gyms
    end

    def show
        render json: find_gym, status: :ok
    end

    def destroy
        find_gym.destroy
        head :no_content, status: :no_content

        # render json: {}
    end

    private 

    def find_gym
        gym = Gym.find(params[:id])
    end

end
