class Account < ApplicationRecord
  validates :organization_name, length: { minimum: 3 }
  # validates :business_email, email: true, unless: proc { |a| a.email.blank? }

  has_many :taxes
  has_many :clients
  has_many :products
end
