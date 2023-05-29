require 'rails_helper'

RSpec.describe Service, type: :model do
  subject do
    @service = Service.new(name: 'Electrician', details: 'blah blah blah blah blah blah blah blah', price: 1233,
                           duration: 3, image: 'https://demo.com/image.jpg')
  end

  it 'should be valid' do
    expect(subject).to be_valid
  end

  it 'should be invalid without a name' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'should be invalid without details' do
    subject.details = nil
    expect(subject).to_not be_valid
  end

  it 'should be invalid without price' do
    subject.price = nil
    expect(subject).to_not be_valid
  end

  it 'should be invalid without duration' do
    subject.duration = nil
    expect(subject).to_not be_valid
  end

  it 'should be invalid without image' do
    subject.image = nil
    expect(subject).to_not be_valid
  end
  it 'should be invalid with a name less than 3 characters' do
    subject.name = 'ab'
    expect(subject).to_not be_valid
  end

  it "should be invalid with a details less than 10 characters" do
    subject.details = "123456789"
    expect(subject).to_not be_valid
end
it "should be invalid with a price less than 0" do
  subject.price = -1
  expect(subject).to_not be_valid
end
end
