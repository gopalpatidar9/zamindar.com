require "test_helper"

class FlatRentalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @flat_rental = flat_rentals(:one)
  end

  test "should get index" do
    get flat_rentals_url
    assert_response :success
  end

  test "should get new" do
    get new_flat_rental_url
    assert_response :success
  end

  test "should create flat_rental" do
    assert_difference("FlatRental.count") do
      post flat_rentals_url, params: { flat_rental: { bedrooms: @flat_rental.bedrooms, floor_no: @flat_rental.floor_no, furnishing_status: @flat_rental.furnishing_status, monthly_rent: @flat_rental.monthly_rent, parking_availability: @flat_rental.parking_availability, posting_type: @flat_rental.posting_type, preferred_gender: @flat_rental.preferred_gender, present_in: @flat_rental.present_in, property_type: @flat_rental.property_type, room_facilities: @flat_rental.room_facilities, security_deposit: @flat_rental.security_deposit, tenant_preference: @flat_rental.tenant_preference, washrooms: @flat_rental.washrooms } }
    end

    assert_redirected_to flat_rental_url(FlatRental.last)
  end

  test "should show flat_rental" do
    get flat_rental_url(@flat_rental)
    assert_response :success
  end

  test "should get edit" do
    get edit_flat_rental_url(@flat_rental)
    assert_response :success
  end

  test "should update flat_rental" do
    patch flat_rental_url(@flat_rental), params: { flat_rental: { bedrooms: @flat_rental.bedrooms, floor_no: @flat_rental.floor_no, furnishing_status: @flat_rental.furnishing_status, monthly_rent: @flat_rental.monthly_rent, parking_availability: @flat_rental.parking_availability, posting_type: @flat_rental.posting_type, preferred_gender: @flat_rental.preferred_gender, present_in: @flat_rental.present_in, property_type: @flat_rental.property_type, room_facilities: @flat_rental.room_facilities, security_deposit: @flat_rental.security_deposit, tenant_preference: @flat_rental.tenant_preference, washrooms: @flat_rental.washrooms } }
    assert_redirected_to flat_rental_url(@flat_rental)
  end

  test "should destroy flat_rental" do
    assert_difference("FlatRental.count", -1) do
      delete flat_rental_url(@flat_rental)
    end

    assert_redirected_to flat_rentals_url
  end
end
