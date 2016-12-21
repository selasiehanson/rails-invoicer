class Tax < ApplicationRecord
    validates :name, presence: true, uniqueness: true
    validates :amount, numericality: {greater_than_or_equal_to: 0}
    validates :description, length: {minimum: 3}
end
