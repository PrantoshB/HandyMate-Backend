class Api::V1::ServicesController < ApplicationController
  before_action :set_service, only: %i[show destroy]

  def index
    @services = Service.all
    render json: @services
  end

  def show
    render json: @service
  end

  def create
    @service = Service.new(service_params)

    if @service.save
      render json: @service, status: :created
    else
      render json: @service.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @service.destroy
    head :no_content
  end

  private

  def set_service
    @service = Service.find(params[:id])
  end

  def service_params
    params.require(:service).permit(:name, :price, :image, :details, :duration, :rating)
  end
end
