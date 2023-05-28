require 'rails_helper'

RSpec.describe User, type: :model do
    subject do
        @user = User.new(full_name: "Jacinta Ngwu", email: "jaccy@test.com", password: "jas12.,")
    end

    it "should be valid" do
        expect(subject).to be_valid
    end

end