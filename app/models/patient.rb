class Patient < ApplicationRecord
  validates_uniqueness_of :cpf
  validates :name, :cpf, :birth_date, presence: true
  validates :cpf, format: { with: /(\d{3})(\d{3})(\d{3})(\d{2})/, message: "not invalid!" }
end
