class RecordstoreRecordsControllers < ApplicationController
    skip_before_action :authorized

    def index
        rsRecords = RecordstoreRecord.all
        render json: rsRecord
    end
    
    def show
        rsRecord = RecordstoreRecord.find(params[:id])
        render json: rsRecord
    end

    def create
        rsRecord= RecordstoreRecord.create(params.permit(:recordstore_id, :discogs_id, :record_id))
        render json: rsRecord
    end

    def destroy
        rsRecord = RecordstoreRecord.find(params[:id])
        rsRecord.destroy
        render json: { success: "RecordstoreRecord deleted"}
    end


end