class ClientsController < ApplicationController
    def index
        clients = Client.all
        render json: clients
    
    end

    def show
        render json: total_memberships, status: :ok

    end

    private 

    def find_client
        client = Client.find(params[:id])
    
    end

    def total_memberships
        client = Client.find(params[:id])
        client.memberships
    end
end
