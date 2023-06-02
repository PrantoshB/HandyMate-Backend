require 'rails_helper'

RSpec.describe Reservation, type: :model do
  before do
    @user = User.create(full_name: 'Prantosh Biswas', email: 'prantosh@test.com', password: 'weekestpassord')
    @location = Location.create(name: 'Raiganj')
    @service = Service.create(name: 'Electrician', details: 'blah blah blah blah blah blah blah blah', price: 1233,
                              duration: 3, image: 'https://demo.com/image.jpg')
    @reservation = Reservation.new(user_id: @user.id, service_id: @service.id, location_id: @location.id,
                                   start_date: '2023-05-28', end_date: '2023-05-29')
  end

  it 'is valid with valid attributes' do
    expect(@reservation).to be_valid
  end
  it 'is not valid without a user_id' do
    @reservation.user_id = nil
    expect(@reservation).to_not be_valid
  end
  it 'is not valid without a service_id' do
    @reservation.service_id = nil
    expect(@reservation).to_not be_valid
  end

  it 'is not valid without a location_id' do
    @reservation.location_id = nil
    expect(@reservation).to_not be_valid
  end

  it 'is not valid without a start_date' do
    @reservation.start_date = nil
    expect(@reservation).to_not be_valid
  end

  it 'is not valid without a end_date' do
    @reservation.end_date = nil
    expect(@reservation).to_not be_valid
  end
end
