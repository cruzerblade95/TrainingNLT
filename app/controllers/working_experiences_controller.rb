class WorkingExperiencesController < ApplicationController
  before_action :set_working_experience, only: [:show, :edit, :update, :destroy]

  # GET /working_experiences
  # GET /working_experiences.json
  def index
    @working_experiences = WorkingExperience.all
  end

  # GET /working_experiences/1
  # GET /working_experiences/1.json
  def show
  end

  # GET /working_experiences/new
  def new
    @working_experience = WorkingExperience.new
    @working_experiences = WorkingExperience.all
  end

  # GET /working_experiences/1/edit
  def edit
  end

  # POST /working_experiences
  # POST /working_experiences.json
  def create
    @working_experience = WorkingExperience.new(working_experience_params)
@working_experiences = WorkingExperience.all
    respond_to do |format|
      if @working_experience.save
        format.html { redirect_to @working_experience, notice: 'Working experience was successfully created.' }
        format.json { render :show, status: :created, location: @working_experience }
      else
        format.html { render :new }
        format.json { render json: @working_experience.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /working_experiences/1
  # PATCH/PUT /working_experiences/1.json
  def update
    respond_to do |format|
      if @working_experience.update(working_experience_params)
        format.html { redirect_to @working_experience, notice: 'Working experience was successfully updated.' }
        format.json { render :show, status: :ok, location: @working_experience }
      else
        format.html { render :edit }
        format.json { render json: @working_experience.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /working_experiences/1
  # DELETE /working_experiences/1.json
  def destroy
    @working_experience.destroy
    respond_to do |format|
      format.html { redirect_to working_experiences_url, notice: 'Working experience was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_working_experience
      @working_experience = WorkingExperience.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def working_experience_params
      params.require(:working_experience).permit(:company_name, :designation, :reason_leaving, :year, :duration, :personal_detail_id)
    end
end
