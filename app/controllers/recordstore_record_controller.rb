class RecordstoreRecordsControllers < ApplicationController
    skip_before_action :authorized
    
    def show
        rsRecord = RecordstoreRecord.find(params[:id])
        render json: rsRecord
    end
end