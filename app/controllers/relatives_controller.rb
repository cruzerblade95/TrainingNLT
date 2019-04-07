class RelativesController < ApplicationController
  before_action :set_relative, only: [:show, :edit, :update, :destroy]

  # GET /relatives
  # GET /relatives.json
  def index
    @relatives = Relative.all
  end

  # GET /relatives/1
  # GET /relatives/1.json
  def show
  end

  # GET /relatives/new
  def new
    @relative = Relative.new
    @current_user_register = session[:register_session]
  end

  # GET /relatives/1/edit
  def edit
  end

  # POST /relatives
  # POST /relatives.json
  def create
    @relative = Relative.new(relative_params)

    respond_to do |format|
      if @relative.save
        format.html { redirect_to staff_register5_path, notice: 'Relative was added.' }
        format.json { render :show, status: :created, location: @relative }
      else
        format.html { render :new }
        format.json { render json: @relative.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /relatives/1
  # PATCH/PUT /relatives/1.json
  def update
    respond_to do |format|
      if @relative.update(relative_params)
        format.html { redirect_to @relative, notice: 'Relative was successfully updated.' }
        format.json { render :show, status: :ok, location: @relative }
      else
        format.html { render :edit }
        format.json { render json: @relative.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /relatives/1
  # DELETE /relatives/1.json
  def destroy
    @relative.destroy
    respond_to do |format|
      format.html { redirect_to relatives_url, notice: 'Relative was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_relative
      @relative = Relative.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def relative_params
      params.require(:relative).permit(:relative_name, :relative_nric, :relative_relationship, :relative_tel_no, :relative_hp_no, :relative_perm_address, :relative_postcode, :personal_detail_id)
    end
end
