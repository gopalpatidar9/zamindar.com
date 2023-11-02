require "application_system_test_case"

class PlotsTest < ApplicationSystemTestCase
  setup do
    @plot = plots(:one)
  end

  test "visiting the index" do
    visit plots_url
    assert_selector "h1", text: "Plots"
  end

  test "should create plot" do
    visit plots_url
    click_on "New plot"

    fill_in "Address", with: @plot.address
    fill_in "City", with: @plot.city
    check "Corner plot" if @plot.corner_plot
    fill_in "Expected price", with: @plot.expected_price
    fill_in "Images", with: @plot.images
    fill_in "Locality", with: @plot.locality
    fill_in "Plot area", with: @plot.plot_area
    fill_in "Price per sqyrd", with: @plot.price_per_sqyrd
    fill_in "Property availability", with: @plot.property_availability
    fill_in "Property type", with: @plot.property_type
    fill_in "Road width", with: @plot.road_width
    fill_in "Transaction type", with: @plot.transaction_type
    click_on "Create Plot"

    assert_text "Plot was successfully created"
    click_on "Back"
  end

  test "should update Plot" do
    visit plot_url(@plot)
    click_on "Edit this plot", match: :first

    fill_in "Address", with: @plot.address
    fill_in "City", with: @plot.city
    check "Corner plot" if @plot.corner_plot
    fill_in "Expected price", with: @plot.expected_price
    fill_in "Images", with: @plot.images
    fill_in "Locality", with: @plot.locality
    fill_in "Plot area", with: @plot.plot_area
    fill_in "Price per sqyrd", with: @plot.price_per_sqyrd
    fill_in "Property availability", with: @plot.property_availability
    fill_in "Property type", with: @plot.property_type
    fill_in "Road width", with: @plot.road_width
    fill_in "Transaction type", with: @plot.transaction_type
    click_on "Update Plot"

    assert_text "Plot was successfully updated"
    click_on "Back"
  end

  test "should destroy Plot" do
    visit plot_url(@plot)
    click_on "Destroy this plot", match: :first

    assert_text "Plot was successfully destroyed"
  end
end
