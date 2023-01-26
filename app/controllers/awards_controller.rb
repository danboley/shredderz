class AwardsController < ApplicationController
  def index
    render json: Award.all, status: :ok
  end

  def show
    render json: find_award, status: :ok
  end

  def create
    render json: Award.create!(award_params), status: :created
  end

  def update
    render json: find_award.update!(award_params), status: :accepted
  end

  def destroy
    find_award.destroy
    head :no_content
  end

  private

  def find_award
    Award.find(params[:id])
  end

  def award_params
    params.permit(:id, :name, :description, :trip_id, :shredder_id)
  end
end
