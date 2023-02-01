class TripsController < ApplicationController
  def index
    render json: Trip.all, status: :ok
  end

  def show
    render json: find_trip, status: :ok
  end

  def create
    render json: Trip.create!(trip_params), status: :created
  end

  def update
    render json: find_trip.update!(trip_params), status: :accepted
  end

  def destroy
    find_trip.destroy
    head :no_content
  end

  private

  def find_trip
    Trip.find(params[:id])
  end

  def trip_params
    params.permit(:name, :year, :location, :hashtag, :slogan, :song, :bracket)
  end
end
