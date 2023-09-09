class Hotel < ApplicationRecord
    HOTEL_TYPES = ["Matriz", "Filial"].freeze
    belongs_to :user
end
