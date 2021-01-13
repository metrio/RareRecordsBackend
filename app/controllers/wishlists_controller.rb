class WishlistsController < ApplicationController
def index
    wishlists = Wishlist.all
    render json: wishlists
end

def show
    wishlist = Wishlist.find(params[:id])
    render json: wishlist
end

def create
    @wishlist = Wishlist.create(wishlist_params)
end

def destroy
    @wishlist.destroy
    render json: { success: 'User deleted successfully' }
end

private
def wishlist_params
    params.require(:wishlist).permit(:user_id, :discogs_id, :record_id)
end

end