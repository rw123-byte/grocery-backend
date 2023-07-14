class AuthenticationController < ApplicationController

    # skip_before_action :authenticate_user

    def login
        user = User.find_by_email(params[:email])
        if user&.authenticate(params[:password])
            token = jwt_encode(user_id: user.id)
            # time = Time.now + 24.hours.to_i
            render json: { token: token, user: user }, status: :ok
        else
            render json: { error: "Incorrect username or password" }, status: :unauthorized
        end
    end
end
