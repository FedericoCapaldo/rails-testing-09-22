require "test_helper"

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "full_name returns the capitalized lowercase first_name and last_name" do
    user = User.new(first_name: "john", last_name: "lennon")
    assert_equal "John Lennon", user.full_name
  end

  test "full_name returns the capitalized uppercase first name and last name" do
    user = User.new(first_name: "JOHN", last_name: "LENNON")
    assert_equal "John Lennon", user.full_name
  end

  test "full_name returns the capitalized mixed case first name and last name" do
    user = User.new(first_name: "jOHn", last_name: "leNNoN")
    assert_equal "John Lennon", user.full_name
  end
end
