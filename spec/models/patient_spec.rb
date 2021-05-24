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

  it 'patients name cannot be blank' do
    patient = Patient.new(
      name: nil,
      cpf: '532.345.501-52',
      birth_date: 1988-05-20
      )
    expect(patient).to_not be_valid
  end

 it 'only numbers for cpf' do
    patient = Patient.new(
      name: 'John Doe',
      cpf: 'a32.345.501-52',
      birth_date: 1988-05-20
      )
    expect(patient).to_not be_valid
  end

  it 'only 11 numbers for cpf' do
    patient = Patient.new(
      name: 'John Doe',
      cpf: '232.345.501-520',
      birth_date: 1988-05-20
      )
    expect(patient).not_to be_valid
  end

  it 'birth date cannot be blank' do
    patient = Patient.new(
      name: 'John Doe',
      cpf: '532.345.501-52',
      birth_date: nil
      )
    expect(patient).not_to be_valid
  end
end
