class Doctor < ApplicationRecord
  has_many :appointments, dependent: :restrict_with_error

  validates_uniqueness_of :crm, scope: :crm_uf
  validates :name, :crm, :crm_uf, presence: true
end
