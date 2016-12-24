##User class
class User < ApplicationRecord
  validates :email, uniqueness: true, email: true
  validates :first_name, presence: true
  validates :last_name, presence: true

  has_secure_password

  has_many :account_details
  has_many :accounts, through: :account_details

  def self.from_token_payload(payload)
    find payload['sub']
  end
end
