require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "invalid user should not be saved" do
    user = User.new
    refute user.save
  end

  test "valid user should be saved" do
    user = User.new(email: "hector.robles@gmail.com", first_name: "Héctor", last_name: "Robles", date_of_birth: "1994-11-28")
    assert user.save
  end
end
