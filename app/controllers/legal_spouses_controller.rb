class LegalSpousesController < ApplicationController
  before_action :set_legal_spouse, only: [:show, :edit, :update, :destroy]

  # GET /legal_spouses
  # GET /legal_spouses.json
  def index
    @legal_spouses = LegalSpouse.all
  end

  # GET /legal_spouses/1
  # GET /legal_spouses/1.json
  def show
  end

  # GET /legal_spouses/new
  def new
    @legal_spouse = LegalSpouse.new
    @current_user_register = session[:register_session]


  end

  # GET /legal_spouses/1/edit
  def edit
  end

  # POST /legal_spouses
  # POST /legal_spouses.json
  def create
    @legal_spouse = LegalSpouse.new(legal_spouse_params)
    respond_to do |format|

      if @legal_spouse.save
        format.html { redirect_to staff_register3_path, notice: 'Personal detail was successfully created.' }
        format.json { render :show, status: :created, location: @legal_spouse }
      else
        format.html { render :new }
        format.json { render json: @legal_spouse.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /legal_spouses/1
  # PATCH/PUT /legal_spouses/1.json
  def update
    respond_to do |format|
      if @legal_spouse.update(legal_spouse_params)
        format.html { redirect_to @legal_spouse, notice: 'Legal spouse was successfully updated.' }
        format.json { render :show, status: :ok, location: @legal_spouse }
      else
        format.html { render :edit }
        format.json { render json: @legal_spouse.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /legal_spouses/1
  # DELETE /legal_spouses/1.json
  def destroy
    @legal_spouse.destroy
    respond_to do |format|
      format.html { redirect_to legal_spouses_url, notice: 'Legal spouse was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_legal_spouse
      @legal_spouse = LegalSpouse.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def legal_spouse_params
      params.require(:legal_spouse).permit(:spouse_name, :spouse_nric, :spouse_dob, :spouse_age, :spouse_pob, :spouse_race, :spouse_religion, :spouse_tel_no, :spouse_hp_no, :spouse_occupation, :spouse_perm_address, :personal_detail_id)
    end
end
