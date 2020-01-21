class UsersController < ApplicationController 
    skip_before_action :authorized, only: [:create]
    def index
        users = User.all
        # options = {
        #     include: [:pictures]
        # }
        render json: UserSerializer.new(users)
    end

    def create
        user = User.create(user_params)
        if user.valid?
            token = encode_token(user_id: user.id)
            render json: { user: UserSerializer.new(user), jwt: token}, status: :created
        else
            render json: { error: 'failed to create user' }, status: :not_acceptable
        end
      end
    def show
        users = User.find_by(id: params[:id])
        # options = {
        #     include: [:pictures]
        # }
        render json: UserSerializer.new(users)
    end

    private
       
    def user_params
      params.require(:user).permit(:username, :password, :password_confirmation)
    end
end