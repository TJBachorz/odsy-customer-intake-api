require 'rails_helper'

RSpec.describe Customer, type: :model do
  it "is valid with valid attributes" do
    customer = Customer.new(
      first_name: "test",
      last_name: "test",
      email: "test",
      vehicle_type: "test",
      vehicle_name: "test",
      vehicle_length: 24
    )
    expect(customer).to be_valid
  end
  it "is not valid without a first name" do
    customer = Customer.new(first_name: nil)
    expect(customer).to_not be_valid
  end
  it "is not valid without a last name" do
    customer = Customer.new(last_name: nil)
    expect(customer).to_not be_valid
  end
  it "is not valid without an email" do
    customer = Customer.new(email: nil)
    expect(customer).to_not be_valid
  end
  it "is not valid without a vehicle type" do
    customer = Customer.new(vehicle_type: nil)
    expect(customer).to_not be_valid
  end
  it "is not valid without a vehicle name" do
    customer = Customer.new(vehicle_name: nil)
    expect(customer).to_not be_valid
  end
  it "is not valid when vehicle length is a string" do
    customer = Customer.new(vehicle_length: "24")
    expect(customer).to_not be_valid
  end
end
