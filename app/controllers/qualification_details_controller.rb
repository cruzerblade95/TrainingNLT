class QualificationDetailsController < ApplicationController
  before_action :set_qualification_detail, only: [:show, :edit, :update, :destroy]

  # GET /qualification_details
  # GET /qualification_details.json
  def index
    @qualification_details = QualificationDetail.all
  end

  # GET /qualification_details/1
  # GET /qualification_details/1.json
  def show
  end

  # GET /qualification_details/new
  def new
    @qualification_detail = QualificationDetail.new
    @current_user_register = session[:register_session]
    @qualification_details = QualificationDetail.all
  end

  # GET /qualification_details/1/edit
  def edit
  end

  # POST /qualification_details
  # POST /qualification_details.json
  def create
    @qualification_detail = QualificationDetail.new(qualification_detail_params)
    @qualification_details = QualificationDetail.all
    respond_to do |format|
      if @qualification_detail.save
        format.html { redirect_to staff_register7_path, notice: 'Qualification was added.' }
        format.json { render :show, status: :created, location: @qualification_detail }
      else
        format.html { render :new }
        format.json { render json: @qualification_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /qualification_details/1
  # PATCH/PUT /qualification_details/1.json
  def update
    respond_to do |format|
      if @qualification_detail.update(qualification_detail_params)
        format.html { redirect_to @qualification_detail, notice: 'Qualification detail was successfully updated.' }
        format.json { render :show, status: :ok, location: @qualification_detail }
      else
        format.html { render :edit }
        format.json { render json: @qualification_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /qualification_details/1
  # DELETE /qualification_details/1.json
  def destroy
    @qualification_detail.destroy
    respond_to do |format|
      format.html { redirect_to staff_register7_path, notice: 'Qualification was destroy.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_qualification_detail
      @qualification_detail = QualificationDetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def qualification_detail_params
      params.require(:qualification_detail).permit(:qualification, :sub_disc, :sch_col_uni, :year, :duration, :personal_detail_id)
    end
end
