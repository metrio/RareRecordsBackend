class RecordStoresControllers < ApplicationController
    skip_before_action :verify_authenticity_token
    
    def show
        recordstore = RecordStore.find(params[:id])
        render json: recordstore
    end

    
end