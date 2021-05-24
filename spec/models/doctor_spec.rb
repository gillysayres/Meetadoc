require 'rails_helper'

RSpec.describe Doctor, type: :model do
  it 'creates a doctor' do
    doctor = Doctor.new(
      name: 'John Doe',
      crm: "53234552",
      crm_uf: 'DF'
      )
    expect(doctor.name).to eql 'John Doe'
    expect(doctor.crm).to eql "53234552"
    expect(doctor.crm_uf).to eql 'DF'
  end

  it 'Doctors name cannot be blank' do
    doctor = Doctor.new(
      name: nil,
      crm: 53234552,
      crm_uf: 'DF'
      )
    expect(doctor).to_not be_valid
  end

 it 'only numbers for crm' do
    doctor = Doctor.new(
      name: 'John Doe',
      crm: 'a3234550152',
      crm_uf: 'DF'
      )
    expect(doctor).to_not be_valid
  end

  it 'crm_uf cannot be blank' do
    doctor = Doctor.new(
      name: 'John Doe',
      crm: '532.345.501-52',
      crm_uf: nil
      )
    expect(doctor).not_to be_valid
  end
end
