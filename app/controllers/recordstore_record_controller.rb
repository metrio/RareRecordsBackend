class RecordstoreRecordsControllers < ApplicationController
    skip_before_action :verify_authenticity_token
    
    def show
        rsRecord = RecordstoreRecord.find(params[:id])
        render json: rsRecord
    end
end