# frozen_string_literal: true

class VehiclesController < ProtectedController
  before_action :set_vehicle, only: %i[show update destroy]

  # GET /vehicles
  def index
    @vehicles = current_user.vehicles

    render json: @vehicles
  end

  # GET /vehicles/1
  def show
    render json: current_user.vehicles.find(params[:id])
    # render json: @vehicle
  end

  # POST /vehicles
  def create
    # @vehicle = Vehicle.new(vehicle_params)
    @vehicle = current_user.vehicles.build(vehicle_params)

    if @vehicle.save
      render json: @vehicle, status: :created, location: @vehicle
    else
      render json: @vehicle.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /vehicles/1
  def update
    if @vehicle.update(vehicle_params)
      render json: @vehicle
    else
      render json: @vehicle.errors, status: :unprocessable_entity
    end
  end

  # DELETE /vehicles/1
  def destroy
    @vehicle.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_vehicle
    @vehicle = current_user.vehicles.find(params[:id])
    # @vehicle = Vehicle.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def vehicle_params
    params.require(:vehicle).permit(:make, :model, :registration_plate_number)
  end
end
