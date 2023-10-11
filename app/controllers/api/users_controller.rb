class Api::UsersController < ApplicationController
    def index
        @users = User.all # Replace 'User' with your actual User model name
        render json: @users
    end
end
