class ServiceRecordsController < ApplicationController
  before_action :set_service_record, only: [:show, :edit, :update, :destroy]

  # GET /service_records
  # GET /service_records.json
  def index
    @service_records = ServiceRecord.all
  end

  # GET /service_records/1
  # GET /service_records/1.json
  def show
  end

  # GET /service_records/new
  def new
    @service_record = ServiceRecord.new
  end

  # GET /service_records/1/edit
  def edit
  end

  # POST /service_records
  # POST /service_records.json
  def create
    @service_record = ServiceRecord.new(service_record_params)

    respond_to do |format|
      if @service_record.save
        format.html { redirect_to @service_record, notice: 'Service record was successfully created.' }
        format.json { render action: 'show', status: :created, location: @service_record }
      else
        format.html { render action: 'new' }
        format.json { render json: @service_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /service_records/1
  # PATCH/PUT /service_records/1.json
  def update
    respond_to do |format|
      if @service_record.update(service_record_params)
        format.html { redirect_to @service_record, notice: 'Service record was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @service_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /service_records/1
  # DELETE /service_records/1.json
  def destroy
    @service_record.destroy
    respond_to do |format|
      format.html { redirect_to service_records_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_service_record
      @service_record = ServiceRecord.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def service_record_params
      params.require(:service_record).permit(:service_type)
    end
end
