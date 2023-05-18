class ReservationsController < ApplicationController
  def index
    @reservations = Reservation.where(user_id: params[:user_id])
  end

  def show
    @reservation = Reservation.find(params[:id])
  end

  def create
    @reservation = Reservation.create(reservation_params)
  end

  def new
    @reservation = Reservation.new
  end

  def destroy
    @reservation = Reservation.find(params[:id])
    @reservation.destroy
  end
end
