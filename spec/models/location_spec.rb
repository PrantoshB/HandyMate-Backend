require 'rails_helper'

RSpec.describe Location, type: :model do
    subject do
        @location = Location.new(name: "Raiganj")
    end
end