json.extract! hotel, :id, :name, :cnpj, :phone, :responsible, :created_at, :updated_at
json.url hotel_url(hotel, format: :json)
