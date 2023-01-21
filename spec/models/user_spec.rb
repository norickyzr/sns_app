require 'rails_helper'

RSpec.describe User, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  it "is valid with a name, email, password, uid" do
    user = User.new(
      name: "test",
      email: "test@example.com",
      password: "a",
    )
    
    user.valid?
    expect(user).to be_valid
  end
  it "is invalid without a name" do
    user = User.new(
      name: nil,
    )
    
    user.valid?
    expect(user.errors[:name]).to include("can't be blank")
  end
  it "is invalid without an email" do
    user = User.new(
      email: nil,
    )
    
    user.valid?
    expect(user.errors[:email]).to include("can't be blank")
  end
  it "is invalid without a password" do
    user = User.new(
      password: nil
    )

    user.valid?
    expect(user.errors[:password]).to include("can't be blank")
  end
  it "is invalid with a duplicate email address"
end
