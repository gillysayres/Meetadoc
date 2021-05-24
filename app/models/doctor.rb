class Doctor < ApplicationRecord
  has_many :appointments, dependent: :restrict_with_error

  validates_uniqueness_of :crm, scope: :crm_uf
  validates :name, :crm, :crm_uf, presence: true
  validates :crm_uf, length: { minimum: 2, maximum: 2}
  validates :crm, numericality: { only_integer: true }
end
