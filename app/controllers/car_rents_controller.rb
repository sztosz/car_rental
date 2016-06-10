class CarRentsController < ApplicationController
  before_action :set_car_rent, only: [:show, :edit, :update, :destroy]

  # GET /car_rents
  # GET /car_rents.json
  def index
    @car_rents = CarRent.all
  end

  # GET /car_rents/1
  # GET /car_rents/1.json
  def show
  end

  # GET /car_rents/new
  def new
    @car_rent = CarRent.new
  end

  # GET /car_rents/1/edit
  def edit
  end

  # POST /car_rents
  # POST /car_rents.json
  def create
    @car_rent = CarRent.new(car_rent_params)

    respond_to do |format|
      if @car_rent.save
        format.html { redirect_to @car_rent, notice: 'Car rent was successfully created.' }
        format.json { render :show, status: :created, location: @car_rent }
      else
        format.html { render :new }
        format.json { render json: @car_rent.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /car_rents/1
  # PATCH/PUT /car_rents/1.json
  def update
    respond_to do |format|
      if @car_rent.update(car_rent_params)
        format.html { redirect_to @car_rent, notice: 'Car rent was successfully updated.' }
        format.json { render :show, status: :ok, location: @car_rent }
      else
        format.html { render :edit }
        format.json { render json: @car_rent.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /car_rents/1
  # DELETE /car_rents/1.json
  def destroy
    @car_rent.destroy
    respond_to do |format|
      format.html { redirect_to car_rents_url, notice: 'Car rent was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_car_rent
      @car_rent = CarRent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def car_rent_params
      params.require(:car_rent).permit(:date_from, :date_to, :price, :customer_id, :car_id)
    end
end
