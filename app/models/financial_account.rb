class FinancialAccount < ApplicationRecord
    belongs_to :user
    belongs_to :hotel
    has_many :form_of_payments
end
