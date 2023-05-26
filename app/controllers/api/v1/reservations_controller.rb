class Api::V1::ReservationsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_reservation, only: [:show, :destroy]

  def index
    @reservations = Reservation.all
    render json: @reservations
  end

  def show
    render json: @reservation
  end

  def create
    @reservation = Reservation.new(reservation_params)

    if @reservation.save
      render json: @reservation, status: 200
    else
      render json: {
        error: 'Error creating reservation...'
      }
    end
  end

  def destroy
    @reservation.destroy
    head :no_content
  end

  private

  def set_reservation
    @reservation = Reservation.find(params[:id])
    authorize! :manage, @reservation
  end

  def reservation_params
    params.require(:reservation).permit(:location_id, :user_id, :service_id, :start_date, :end_date)
  end
end
