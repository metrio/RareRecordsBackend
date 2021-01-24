class OwnersController < ApplicationController
    skip_before_action :authorized
    
def show
    owner = Owner.find(params[:id])
    render json: owner
end

def profile
    render json: { owner: OwnerSerializer.new(@owner)}, status: :accepted
end

def create
    @owner = Owner.create(owner_params)
    if @owner.valid?
        @token = encode_token(owner_id: @owner.id)
        render json: {owner: OwnerSerializer.new(@owner), jwt: @token} , status: :created
    else 
        render json: {error: 'failed to create owner'}, status: :not_accepted
    end
end

private

def owner_params
    params.require(:owner).permit(:username, :password, :email)
end

end