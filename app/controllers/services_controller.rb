class ServicesController < ApplicationController
  def index
    @services = Service.all
  end

  def show
    @service = Service.find(params[:id])
  end

  def create
    @service = Service.create(service_params)
  end

  def new
    @service = Service.new
  end

  def destroy
    @service = Service.find(params[:id])
    @service.destroy
  end

  private

  def service_params
    params.require(:service).permit(:name, :price, :image, :details, :duration, :rating)
  end
end
