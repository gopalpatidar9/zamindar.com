class HomeController < ApplicationController
  def index
    @flat_rentals = FlatRental.all
    @first_images = @flat_rentals.map { |rental| rental.images.last }
  end
end
