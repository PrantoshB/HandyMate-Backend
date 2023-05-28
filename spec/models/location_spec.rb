require 'rails_helper'

RSpec.describe Location, type: :model do
    subject do
        @location = Location.new(name: "Raiganj")
    end
    it "should be valid" do
        expect(subject).to be_valid
    end
end