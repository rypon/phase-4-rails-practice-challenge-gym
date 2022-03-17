class MembershipsController < ApplicationController


    def index
        memberships = Membership.all
        render json: memberships

    end 
    def create
        new_membership = Membership.create!(membership_params)
        render json: new_membership, status: :created
    end 


    private
    def membership_params
    params.permit(:gym_id, :client_id, :charge)
    
    end

    def render_unprocessable_entity_response(invalid)
        render json: {errors: invalid.record.errors.full_messages}, status: :unprocessable_entity
    
    end
end
