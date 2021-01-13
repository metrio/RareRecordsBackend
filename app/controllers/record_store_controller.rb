class RecordStoresControllers < ApplicationController
    
    def show
        record = Record.find(params[:id])
        render json: record
    end
end