class Message < ApplicationRecord
  
    belongs_to :chatroome
    validates :content, presence: true
end
