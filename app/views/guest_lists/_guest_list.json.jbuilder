json.extract! guest_list, :id, :first_name, :last_name, :rsvp, :address, :phone, :customer_id, :created_at, :updated_at
json.url guest_list_url(guest_list, format: :json)
