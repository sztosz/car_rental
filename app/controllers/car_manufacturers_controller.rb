class CarManufacturersController < ApplicationController
  before_action :set_car_manufacturer, only: [:show, :edit, :update, :destroy]

  # GET /car_manufacturers
  # GET /car_manufacturers.json
  def index
    @car_manufacturers = CarManufacturer.all
  end

  # GET /car_manufacturers/1
  # GET /car_manufacturers/1.json
  def show
  end

  # GET /car_manufacturers/new
  def new
    @car_manufacturer = CarManufacturer.new
  end

  # GET /car_manufacturers/1/edit
  def edit
  end

  # POST /car_manufacturers
  # POST /car_manufacturers.json
  def create
    @car_manufacturer = CarManufacturer.new(car_manufacturer_params)

    respond_to do |format|
      if @car_manufacturer.save
        format.html { redirect_to @car_manufacturer, notice: 'Car manufacturer was successfully created.' }
        format.json { render :show, status: :created, location: @car_manufacturer }
      else
        format.html { render :new }
        format.json { render json: @car_manufacturer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /car_manufacturers/1
  # PATCH/PUT /car_manufacturers/1.json
  def update
    respond_to do |format|
      if @car_manufacturer.update(car_manufacturer_params)
        format.html { redirect_to @car_manufacturer, notice: 'Car manufacturer was successfully updated.' }
        format.json { render :show, status: :ok, location: @car_manufacturer }
      else
        format.html { render :edit }
        format.json { render json: @car_manufacturer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /car_manufacturers/1
  # DELETE /car_manufacturers/1.json
  def destroy
    @car_manufacturer.destroy
    respond_to do |format|
      format.html { redirect_to car_manufacturers_url, notice: 'Car manufacturer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_car_manufacturer
      @car_manufacturer = CarManufacturer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def car_manufacturer_params
      params.require(:car_manufacturer).permit(:name)
    end
end
