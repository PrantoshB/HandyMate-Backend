class Userscontroller < ApplicationController
    def index
        @users = User.all
    end

    def show
        @user = User.find(params[:id])
        @reservations = @user.reservations
    end

    def new
        @user = User.new
    end
