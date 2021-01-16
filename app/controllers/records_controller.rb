class RecordsController < ApplicationController
    skip_before_action :verify_authenticity_token
    

    def index
        records = Record.all
        render json: records
    end

    def show
        record = Record.find(params[:id])
        render json: record
    end

    def create
        record = Record.create(params.permit(:album_name, :artist_name, :discogs_id, :thumb_url, :img_url, :year_of_release))
        render json: record
    end
end
