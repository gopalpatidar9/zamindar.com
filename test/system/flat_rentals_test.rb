require "application_system_test_case"

class FlatRentalsTest < ApplicationSystemTestCase
  setup do
    @flat_rental = flat_rentals(:one)
  end

  test "visiting the index" do
    visit flat_rentals_url
    assert_selector "h1", text: "Flat rentals"
  end

  test "should create flat rental" do
    visit flat_rentals_url
    click_on "New flat rental"

    fill_in "Bedrooms", with: @flat_rental.bedrooms
    fill_in "Floor no", with: @flat_rental.floor_no
    fill_in "Furnishing status", with: @flat_rental.furnishing_status
    fill_in "Monthly rent", with: @flat_rental.monthly_rent
    fill_in "Parking availability", with: @flat_rental.parking_availability
    fill_in "Posting type", with: @flat_rental.posting_type
    fill_in "Preferred gender", with: @flat_rental.preferred_gender
    fill_in "Present in", with: @flat_rental.present_in
    fill_in "Property type", with: @flat_rental.property_type
    fill_in "Room facilities", with: @flat_rental.room_facilities
    fill_in "Security deposit", with: @flat_rental.security_deposit
    fill_in "Tenant preference", with: @flat_rental.tenant_preference
    fill_in "Washrooms", with: @flat_rental.washrooms
    click_on "Create Flat rental"

    assert_text "Flat rental was successfully created"
    click_on "Back"
  end

  test "should update Flat rental" do
    visit flat_rental_url(@flat_rental)
    click_on "Edit this flat rental", match: :first

    fill_in "Bedrooms", with: @flat_rental.bedrooms
    fill_in "Floor no", with: @flat_rental.floor_no
    fill_in "Furnishing status", with: @flat_rental.furnishing_status
    fill_in "Monthly rent", with: @flat_rental.monthly_rent
    fill_in "Parking availability", with: @flat_rental.parking_availability
    fill_in "Posting type", with: @flat_rental.posting_type
    fill_in "Preferred gender", with: @flat_rental.preferred_gender
    fill_in "Present in", with: @flat_rental.present_in
    fill_in "Property type", with: @flat_rental.property_type
    fill_in "Room facilities", with: @flat_rental.room_facilities
    fill_in "Security deposit", with: @flat_rental.security_deposit
    fill_in "Tenant preference", with: @flat_rental.tenant_preference
    fill_in "Washrooms", with: @flat_rental.washrooms
    click_on "Update Flat rental"

    assert_text "Flat rental was successfully updated"
    click_on "Back"
  end

  test "should destroy Flat rental" do
    visit flat_rental_url(@flat_rental)
    click_on "Destroy this flat rental", match: :first

    assert_text "Flat rental was successfully destroyed"
  end
end
