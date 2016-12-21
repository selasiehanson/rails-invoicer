class User < ApplicationRecord
    validates :email, uniqueness: true, email: true
    validates :password, length: {minimum: 8}
end
