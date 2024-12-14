class Material < ApplicationRecord
  belongs_to :user

  validates :name, presence: true
  validates :quantity, numericality: { only_integer: true, greater_than: 0 }
end
