class OwnersController < ApplicationController
    skip_before_action :authorized
    
def show
    owner = Owner.find(params[:id])
    render json: owner
end

def profile
    render json: { owner: ownerSerializer.new(@owner)}, status: :accepted
end

def create
    @owner = owner.create(owner_params)
    render json: @owner
end

private

def owner_params
    params.require(:owner).permit(:username, :password, :email)
end

end