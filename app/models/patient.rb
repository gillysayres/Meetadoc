class Patient < ApplicationRecord
  has_many :appointments

  validates_uniqueness_of :cpf
  validates :name, :cpf, :birth_date, presence: true
  # validates :cpf, format: { with: , message: "not invalid!" }
end
