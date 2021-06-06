json.extract! contact, :id, :address, :email, :fax, :phone, :created_at, :updated_at
json.url contact_url(contact, format: :json)
