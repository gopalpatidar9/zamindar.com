# app/controllers/api/users/registrations_controller.rb
module Api
  module Users
    class RegistrationsController < Devise::RegistrationsController
      # Controller actions and code here
      before_action :ensure_params_exist, only: :create

      # POST /api/users
      def create
        user = User.new(user_params)

        if user.save
          render json: { message: 'User registered successfully' }, status: :created
        else
          render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
        end
      end

      private

      def user_params
        params.require(:user).permit(:email, :password, :password_confirmation, :name, :adharnumber, :phone_number, :address)
      end

      def ensure_params_exist
        return unless params[:user].blank?

        render json: { error: 'Missing user parameter' }, status: :bad_request
      end
    end
  end
end

  

