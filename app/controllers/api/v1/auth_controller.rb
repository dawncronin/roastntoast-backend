class Api::V1::AuthController < ApplicationController
  skip_before_action :authorized, only: [:create, :show]
 
  def create
    user = User.find_by(username: user_login_params[:username])
    if user && user.authenticate(user_login_params[:password])
      token = encode_token({ user_id: user.id })
      render json: { user: UserSerializer.new(user), jwt: token }, status: :accepted
    else
      render json: { message: 'Invalid username or password' }, status: :unauthorized
    end
  end

  def show
    # token = decoded_token
    token = auth_header.split('.')[1]
    if logged_in?
      render json: { id: current_user.id, username: current_user.username }
    else
      render json: {error: "please login"}, status: 401
    end
  end
 
  private
 
  def user_login_params
    params.require(:user).permit(:username, :password)
  end
end