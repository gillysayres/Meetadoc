class Doctor < ApplicationRecord
  validates_uniqueness_of :crm, scope: :crm_uf
  validates :name, :crm, :crm_uf, presence: true
end
