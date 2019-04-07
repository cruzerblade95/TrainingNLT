class TrainingAttendedsController < ApplicationController
  before_action :set_training_attended, only: [:show, :edit, :update, :destroy]

  # GET /training_attendeds
  # GET /training_attendeds.json
  def index
    @training_attendeds = TrainingAttended.all
  end

  # GET /training_attendeds/1
  # GET /training_attendeds/1.json
  def show
  end

  # GET /training_attendeds/new
  def new
    @training_attended = TrainingAttended.new
@current_user_register = session[:register_session]
    @training_attendeds = TrainingAttended.all
  end

  # GET /training_attendeds/1/edit
  def edit
  end

  # POST /training_attendeds
  # POST /training_attendeds.json
  def create
    @training_attended = TrainingAttended.new(training_attended_params)
@training_attendeds = TrainingAttended.all
    respond_to do |format|
      if @training_attended.save
        format.html { redirect_to @training_attended, notice: 'Training attended was successfully created.' }
        format.json { render :show, status: :created, location: @training_attended }
      else
        format.html { render :new }
        format.json { render json: @training_attended.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /training_attendeds/1
  # PATCH/PUT /training_attendeds/1.json
  def update
    respond_to do |format|
      if @training_attended.update(training_attended_params)
        format.html { redirect_to @training_attended, notice: 'Training attended was successfully updated.' }
        format.json { render :show, status: :ok, location: @training_attended }
      else
        format.html { render :edit }
        format.json { render json: @training_attended.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /training_attendeds/1
  # DELETE /training_attendeds/1.json
  def destroy
    @training_attended.destroy
    respond_to do |format|
      format.html { redirect_to training_attendeds_url, notice: 'Training attended was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_training_attended
      @training_attended = TrainingAttended.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def training_attended_params
      params.require(:training_attended).permit(:training, :status, :duration_training, :training_institute, :training_place, :personal_detail_id)
    end
end
