class LocationsController < ApplicationController
    def all_loctions
      @locations = Location.all
    end
  end