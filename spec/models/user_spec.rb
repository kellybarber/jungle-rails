require 'rails_helper'

RSpec.describe User, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  before do
    @user = User.new(first_name: "Jack",
                     last_name: "Kerouac",
                     email: "jackkerouac@email.com ",
                     password: "kerouac",
                     password_confirmation: "kerouac")
  end

  context "Password and password validation" do
    it "exists" do
      @user
    end
    it "does not match" do
      @user.password = "Jakc"
      expect(@user).to_not be_valid
    end
    it "does not exist" do
      @user.password = nil
      @user.password_confirmation = nil
      expect(@user).to_not be_valid
    end
  end

  context "User email" do
    it "is unique" do
      @email = User.find_by(email: @user.email)
      expect(@email).to eq(nil)
    end
  end

  context "Email, first name, and last name" do
    it "exists" do
      @user
    end
    it "does not exist" do
      @user.first_name = nil
      @user.last_name = nil
      @user.email = nil
      expect(@user).to_not be_valid
    end
  end

  context "Password" do
    it "is at least 6 characters long" do
      expect(@user.password.length).to be > 6
    end
  end

  describe '.authenticate_with_credentials' do
  # examples for this class method here
    it "ignores whitespace for emails" do
      @user.email = "   jackkerouac@email.com     "
      expect(@user).to be_valid
    end
    it "ignores casing" do
      @user.email = " JaCkKeRoUaC@EmAiL.cOm  "
      expect(@user).to be_valid
    end

  end

end
