class GearsController < ApplicationController
  def index
    render json: Gear.all, status: :ok
  end

  def show
    render json: find_gear, status: :ok
  end

  def create
    render json: Gear.create!(gear_params), status: :created
  end

  def update
    render json: find_gear.update!(gear_params), status: :accepted
  end

  def destroy
    find_gear.destroy
    head :no_content
  end

  private

  def find_awa
    Gear.find(params[:id])
  end

  def gear_params
    params.permit(:id, :year, :brand, :model, :specs, :pic, :shredder_id)
  end
end
