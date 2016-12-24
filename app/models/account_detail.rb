class AccountDetail < ApplicationRecord
  validates :role, presence: true
  validate :valid_role

  belongs_to :user
  belongs_to :account

  def valid_role
    roles = %w(admin cashier)
    error_message = "role must be one of the following #{roles}"
    unless roles.include?(role)
      errors.add(:role, error_message)
    end
  end
end