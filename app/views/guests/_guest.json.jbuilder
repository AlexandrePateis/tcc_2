json.extract! guest, :id, :name, :birthday, :gender, :created_at, :updated_at
json.url guest_url(guest, format: :json)
