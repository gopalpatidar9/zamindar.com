class FlatRental < ApplicationRecord
    
    validates :property_type, :posting_type, :bedrooms, :furnishing_status, :present_in, :floor_no, :monthly_rent, :security_deposit, presence: true
    validates :bedrooms, :floor_no, :washrooms, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

    PROPERTY_TYPES = ['Residential', 'Commercial']
    FURNISHING_STATUS = ['Furnished', 'Unfurnished', 'Semifurnished']
    PRESENT_IN = ['An independent building', 'An independent flat(s)', 'Present in a society']
    FLOOR_NO = ['Lower Basment' , 'Uper Basment' ,'Ground' , '1' , '2' , '3' , '4' , '5', '6' ]

    # # serialize :room_facilities, Array
    # # serialize :images, Array
    has_many_attached :images
    validates :country, presence: true
    validates :city, presence: true
    has_many :messages
    has_many :chatroomes
    
    belongs_to :user
    
end
