class AuthController < ApplicationController
    skip_before_action :authorized, only: [:create, :owner_create]
  
    def create
      @user = User.find_by(username: user_login_params[:username])
      if @user && @user.authenticate(user_login_params[:password])
        token = encode_token({ user_id: @user.id })
        render json: { user: UserSerializer.new(@user), jwt: token }, status: :accepted
      else
        render json: { message: "Invalid username or password" }, status: :unauthorized
      end
    end

    def owner_create
      @owner = Owner.find_by(username: owner_login_params[:username])
      if @owner && @owner.authenticate(owner_login_params[:password])
        token = encode_token({owner_id: @owner.id})
        render json: { owner: OwnerSerializer.new(@owner), jwt: token }, status: :accepted
      else
        render json: {message: "You're not the Owner"}, status: :unauthorized
      end
    end
  
    private
  
    def user_login_params
      params.require(:user).permit(:username, :password)
    end

    def owner_login_params
      params.require(:owner).permit(:username, :password)
    end
  end