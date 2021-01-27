class RecordsController < ApplicationController
    skip_before_action :authorized
    

    def index
        records = Record.all
        render json: records
    end

    def show
        record = Record.find(params[:id])
        render json: record
    end

    def create
        record = Record.create(params.require(:record).permit!)
        render json: record
    end

    def update
        record = Record.find(params[:id])
        record.update(params.require(:record).permit!)
        render json: record
    end
end
