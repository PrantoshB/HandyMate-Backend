require 'rails_helper'

RSpec.describe Service, type: :model do
   subject do
    @service = Service.new(name: "Electrician", details: "blah blah blah blah blah blah blah blah", price: 1233, duration: 3, image: "https://demo.com/image.jpg")
   end

   it "should be valid" do
        expect(subject).to be_valid
    end
    
end