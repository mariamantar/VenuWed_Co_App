json.extract! order, :id, :customer_id, :venue_listing_id, :created_at, :updated_at
json.url order_url(order, format: :json)
