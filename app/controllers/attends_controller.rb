class AttendsController < ApplicationController
  def index
    render json: Attend.all, status: :ok
  end

  def show
    render json: find_attend, status: :ok
  end

  def create
    render json: Attend.create!(attend_params), status: :created
  end

  def update
    render json: find_attend.update!(attend_params), status: :accepted
  end

  def destroy
    find_attend.destroy
    head :no_content
  end

  private

  def find_attend
    Attend.find(params[:id])
  end

  def attend_params
    params.permit(:id, :shredder_id, :trip_id, :present)
  end
end
