class Patient < ApplicationRecord
  # validates :number, format: { with: /\A\d+\z/, message: "Integer only. No sign allowed." }
  validates_presence_of :cpf, :name, :birth_date

  # with_options :allow_blank => true do |v|
    # v.validates_length_of :cpf, :is => 11, :message => "Esse não é um CPF válido" }
    # v.validates_numericality_of :cpf, :message => "CPF deve conter apenas números" }
    # v.validates_uniqueness_of :cpf, :message => "Esse CPF já está cadastrado" }
    # v.validates_as_cpf :cpf, :message => "---" }
  # end
end
