require "application_system_test_case"

class ProductTest < ApplicationSystemTestCase
  test "visit index" do
    visit root_url
    assert_selector "h1", text: "Awesome Products"
    assert_selector ".card-product", count: Product.count
  end


  test "signed in user can create a new product" do
    login_as users(:george)
    visit "products/new"
    save_screenshot

    fill_in "product_name", with: "Le Wagon"
    fill_in "product_tagline", with: "Change your life: Learn to code"
    save_screenshot

    click_on "Create Product"
    save_screenshot
    
    assert_text "Change your life: Learn to code"
  end
end
