class UsersController < ApplicationController

    def show 
        user = User.find(session[:id])
        if user 
            render json: user 
        else 
            render json: { error: "Unauthorized" }, status: :unauthorized
    end
end
