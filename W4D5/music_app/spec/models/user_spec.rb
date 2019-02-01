require 'rails_helper'

RSpec.describe User, type: :model do

  subject(:user) do
    User.new(
      email: "test@test.com",
      password: "password",
      session_token: "1234567890"
    )
    # FactoryBot.build(:user,
    #   email: "jonathan@fakesite.com",
    #   password: "good_password")
  end

  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:password_digest) }
  it { should validate_length_of(:password).is_at_least(6) }

  it "creates a password digest when a password is given" do
    expect(user.password_digest).to_not be_nil
  end

end
