json.extract! sale, :id, :name, :description, :image, :created_at, :updated_at
json.url sale_url(sale, format: :json)
