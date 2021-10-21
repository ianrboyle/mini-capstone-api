class Supplier < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  # validates :email, uniqueness: true
  # validates :phone_number, uniqueness: true
end
