class WishlistsController < ApplicationController
    skip_before_action :authorized

def index
    wishlists = Wishlist.all
    render json: wishlists
end

def show
    wishlist = Wishlist.find(params[:id])
    render json: wishlist
end

def create
    wishlist = Wishlist.create(params.permit(:user_id, :discogs_id, :record_id, :notes))
    render json: wishlist
end

def destroy
    wishlist = Wishlist.find(params[:id])
    wishlist.destroy
    render json: { success: 'Wishlist Deleted' }
end



end