class Api::V1::UsersController < ApplicationController
  def index
    @users = User.all
    render json: @users
  end

  def show
    @user = User.find(params[:id])
    @reservations = @user.reservations
  end

  def new
    @user = User.new
  end
end
