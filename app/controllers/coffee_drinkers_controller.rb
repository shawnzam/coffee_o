class CoffeeDrinkersController < ApplicationController
  before_action :set_coffee_drinker, only: [:show, :edit, :update, :destroy]

  # GET /coffee_drinkers
  # GET /coffee_drinkers.json
  def index
    @coffee_drinkers = CoffeeDrinker.all
  end

  # GET /coffee_drinkers/1
  # GET /coffee_drinkers/1.json
  def show
  end

  # GET /coffee_drinkers/new
  def new
    @coffee_drinker = CoffeeDrinker.new
  end

  # GET /coffee_drinkers/1/edit
  def edit
  end

  # POST /coffee_drinkers
  # POST /coffee_drinkers.json
  def create
    @coffee_drinker = CoffeeDrinker.new(coffee_drinker_params)

    respond_to do |format|
      if @coffee_drinker.save
        format.html { redirect_to @coffee_drinker, notice: 'Coffee drinker was successfully created.' }
        format.json { render :show, status: :created, location: @coffee_drinker }
      else
        format.html { render :new }
        format.json { render json: @coffee_drinker.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /coffee_drinkers/1
  # PATCH/PUT /coffee_drinkers/1.json
  def update
    respond_to do |format|
      if @coffee_drinker.update(coffee_drinker_params)
        format.html { redirect_to @coffee_drinker, notice: 'Coffee drinker was successfully updated.' }
        format.json { render :show, status: :ok, location: @coffee_drinker }
      else
        format.html { render :edit }
        format.json { render json: @coffee_drinker.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /coffee_drinkers/1
  # DELETE /coffee_drinkers/1.json
  def destroy
    @coffee_drinker.destroy
    respond_to do |format|
      format.html { redirect_to coffee_drinkers_url, notice: 'Coffee drinker was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_coffee_drinker
      @coffee_drinker = CoffeeDrinker.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def coffee_drinker_params
      params.require(:coffee_drinker).permit(:phone_number, :current_score)
    end
end
