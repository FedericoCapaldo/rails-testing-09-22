require "application_system_test_case"

class ProductTest < ApplicationSystemTestCase
  test "visit index" do
    visit root_url
    assert_selector "h1", text: "Awesome Products"
  end
end
