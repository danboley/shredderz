class AwardsController < ApplicationController
  def index
    render json: Award.all, status: :ok
  end

  def show
    render json: find_awa, status: :ok
  end

  def create
    render json: Award.create!(awa_params), status: :created
  end

  def update
    render json: find_awa.update!(awa_params), status: :accepted
  end

  def destroy
    find_awa.destroy
    head :no_content
  end

  private

  def find_awa
    Award.find(params[:id])
  end

  def awa_params
    params.permit(:id, :name, :description, :trip_id, :shredder_id)
  end
end
