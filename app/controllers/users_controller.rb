class UsersController < ApplicationController

    def show
        user = User.find(params[:id])
        render json: user
    end

    def profile
        render json: { user: UserSerializer.new(@user)}, status: :accepted
    end

    def create
        @user = User.create(user_params)
        render json: @user
    end

    def destroy
        @user.destroy
        render json: { success: 'User deleted successfully' }
    end

    private
    def user_params
        params.require(:user).permit(:username, :password, :email)
    end
end
