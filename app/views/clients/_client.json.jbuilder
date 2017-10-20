json.extract! client, :id, :business_name, :physical_address, :year, :created_at, :updated_at
json.url client_url(client, format: :json)
