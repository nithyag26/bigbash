json.extract! customer, :id, :name, :mob, :email, :date_of_birth, :created_at, :updated_at
json.url customer_url(customer, format: :json)
