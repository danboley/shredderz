class AccommodationsController < ApplicationController
  def index
    render json: Accommodation.all, status: :ok
  end

  def show
    render json: find_acc, status: :ok
  end

  def create
    render json: Accommodation.create!(acc_params), status: :created
  end

  def update
    render json: find_acc.update!(acc_params), status: :accepted
  end

  def destroy
    find_acc.destroy
    head :no_content
  end

  private

  def find_acc
    Accommodation.find(params[:id])
  end

  def acc_params
    params.permit(:id, :name, :description, :address, :link, :pic, :trip_id)
  end
end
