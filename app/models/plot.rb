class Plot < ApplicationRecord
  validates :property_type, :city, :locality, :address, :road_width, :plot_area, :transaction_type, :property_availability, :expected_price, :price_per_sqyrd, presence: true
  validates :road_width, :plot_area, :expected_price, :price_per_sqyrd, numericality: { greater_than: 0 }

  belongs_to :user
  has_many_attached :images

  PROPERTY_TYPES = ['Residential', 'Commercial']
  PRESENT_IN = [ 'An independent land', 'Present in a society']

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
