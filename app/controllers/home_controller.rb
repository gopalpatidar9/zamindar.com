class HomeController < ApplicationController
  def index
    @flat_rentals = FlatRental.all
    @plots = Plot.all
    @first_images = @flat_rentals.map { |rental| rental.images.last }
    @plotfirst_images = @plots.map { |rental| rental.images.last }
  end
end
