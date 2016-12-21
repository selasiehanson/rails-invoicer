class Client < ApplicationRecord
    validates :name, presence: true, length: {minimum: 5}
    validates :phone_number, presence: true, length: { is: 10 }
    validates :address, presence: true, length: {minimum: 8}
    validates :email, uniqueness: true, email: true
end
