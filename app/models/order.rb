class Order < ApplicationRecord
  belongs_to :customer
  belongs_to :venue_listing
end
