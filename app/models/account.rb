class Account < ApplicationRecord
    validates :organization_name, length: {minimum: 3}
    validates :business_email, email: true, unless: Proc.new {|a| a.email.blank?}
end
