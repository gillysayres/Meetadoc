require 'rails_helper'

RSpec.describe Patient, type: :model do
  it 'creates a patient' do
    patient = Patient.new(
      name: 'John Doe',
      cpf: '532.345.501-52',
      birth_date: 1988-05-20
      )
    expect(patient.name).to eql "John Doe"
    expect(patient.cpf).to eql "532.345.501-52"
    expect(patient.birth_date).to eql 1988-05-20
  end
end
