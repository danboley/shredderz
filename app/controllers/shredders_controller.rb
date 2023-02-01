class ShreddersController < ApplicationController
  def index
    render json: Shredder.all, status: :ok
  end

  def show
    render json: find_shred, status: :ok
  end

  def create
    render json: Shredder.create!(shred_params), status: :created
  end

  def update
    render json: find_shred.update!(shred_params), status: :accepted
  end

  def destroy
    find_shred.destroy
    head :no_content
  end

  private

  def find_shred
    Shredder.find(params[:id])
  end

  def shred_params
    params.permit(:name, :nickname, :dob, :kind, :pic)
  end
end
