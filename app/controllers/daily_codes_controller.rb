class DailyCodesController < ApplicationController
  before_action :set_daily_code, only: [:show, :edit, :update, :destroy]

  # GET /daily_codes
  # GET /daily_codes.json
  def index
    @daily_codes = DailyCode.all
  end

  # GET /daily_codes/1
  # GET /daily_codes/1.json
  def show
  end

  # GET /daily_codes/new
  def new
    @daily_code = DailyCode.new
  end

  # GET /daily_codes/1/edit
  def edit
  end

  # POST /daily_codes
  # POST /daily_codes.json
  def create
    @daily_code = DailyCode.new(daily_code_params)

    respond_to do |format|
      if @daily_code.save
        format.html { redirect_to @daily_code, notice: 'Daily code was successfully created.' }
        format.json { render :show, status: :created, location: @daily_code }
      else
        format.html { render :new }
        format.json { render json: @daily_code.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /daily_codes/1
  # PATCH/PUT /daily_codes/1.json
  def update
    respond_to do |format|
      if @daily_code.update(daily_code_params)
        format.html { redirect_to @daily_code, notice: 'Daily code was successfully updated.' }
        format.json { render :show, status: :ok, location: @daily_code }
      else
        format.html { render :edit }
        format.json { render json: @daily_code.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /daily_codes/1
  # DELETE /daily_codes/1.json
  def destroy
    @daily_code.destroy
    respond_to do |format|
      format.html { redirect_to daily_codes_url, notice: 'Daily code was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_daily_code
      @daily_code = DailyCode.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def daily_code_params
      params.require(:daily_code).permit(:code_for_mug, :code_for_non_mug)
    end
end
