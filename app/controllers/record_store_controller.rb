class RecordStoreController < ApplicationController
    skip_before_action :authorized
    
    def show
        recordstore = RecordStore.find(params[:id])
        render json: recordstore
    end

    
end