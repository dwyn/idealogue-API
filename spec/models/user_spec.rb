require 'rails_helper'

RSpec.describe User, type: :model do

  #! User can save first_name
  it "has a first name" do
    user = User.create!(
      last_name: "Anthony",
      email: "dwayne@email.com",
      password: "password"
    )
    expect(user).to_not be_valid

    user.last_name = "Dwayne"
    expect(user).to be_valid
  end


  it "has a last name" do
    user = User.create!(
      first_name: "Dwayne",
      email: "dwayne@email.com",
      password: "password"
    )
    expect(user).to_not be_valid

    user.first_name = "Dwayne"
    expect(user).to be_valid
  end

  # it "Ensures presence of first name" do
  #   user = User.new(email: "dwayne@email.com", last_name: "Anthony", ).save
  #   expect(user).to eq(false)
  # end  
  # it "Ensures presence of last name" do
  #   user = User.new(email: "dwayne@email.com", first_name: "Dwayne", ).save
  #   expect(user).to eq(false)
  # end
end