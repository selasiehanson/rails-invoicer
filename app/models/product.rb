class Product < ApplicationRecord
    validates :name, presence: true
    validates :description, presence: true
    validates :reorder_level, numericality: {greater_than_or_equal_to: 0 }
    validates :product_type, presence: true
    validate  :valid_product_type

    belongs_to :account

    def valid_product_type
        types = %w(consumable durable service)
        msg = "product_type must be one of the following #{types}"
         unless types.include?(self.product_type.downcase) 
            errors.add(:product_type, msg)
         end                               
    end
end
