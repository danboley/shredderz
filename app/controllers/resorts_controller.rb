class ResortsController < ApplicationController
  def index
    render json: Resort.all, status: :ok
  end

  def show
    render json: find_res, status: :ok
  end

  def create
    render json: Resort.create!(res_params), status: :created
  end

  def update
    render json: find_res.update!(res_params), status: :accepted
  end

  def destroy
    find_res.destroy
    head :no_content
  end

  private

  def find_res
    Resort.find(params[:id])
  end

  def res_params
    params.permit(:name, :map, :top_ele, :base_ele, :vertical, :area, :runs, :pic, :trip_id)
  end
end
