require 'rails_helper'

RSpec.describe User, type: :model do
    subject do
        @user = User.new(full_name: "Jacinta Ngwu", email: "jaccy@test.com", password: "jas12.,")
    end

    it "should be valid" do
        expect(subject).to be_valid
    end

    it "should be invalid without a full_name" do
        subject.full_name = nil
        expect(subject).to_not be_valid
    end

    it "should be invalid without email" do
        subject.email = nil
        expect(subject).to_not be_valid
    end

end