# frozen_string_literal: true

class VehiclesController < ApplicationController
  before_action :set_vehicle, only: %i[show update destroy]

  # GET /vehicles
  def index
    @vehicles = Vehicle.all

    render json: @vehicles
  end

  # GET /vehicles/1
  def show
    # render json: @vehicle
    render json: vehicle.find(params[:id])
  end

  # POST /vehicles
  def create
    @vehicle = Vehicle.new(vehicle_params)
    # @vehicle = current_user.vehicles.build(vehicle_params)

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
    # @vehicle = current_user.events.find(params[:id])
    @vehicle = Vehicle.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def vehicle_params
    params.require(:vehicle).permit(:make, :model, :registration_plate_number,
                                    :user_id)
    # params.require(:vehicle).permit(:make, :model, :registration_plate_number)
  end
end
