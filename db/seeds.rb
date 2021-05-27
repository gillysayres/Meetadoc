puts 'Destroying all previous data...'
Doctor.destroy_all
Patient.destroy_all
Appointment.destroy_all


puts 'Creating doctors...'
Doctor.create!(
  name: 'John',
  crm: 3232,
  crm_uf: 'SP')

Doctor.create!(
  name: 'Jake',
  crm: 3246332,
  crm_uf: 'BA')

puts 'Creating patients...'

Patient.create!(
  name: 'Noah',
  cpf: '371.555.435-51',
  birth_date: "1998-01-02")

puts "patient 1"

Patient.create!(
  name: 'Oliver',
  cpf: '336.590.400-02')

puts "patient 2"

Patient.create!(
  name: 'Elijah',
  cpf: '995.204.960-92')

puts "patient 3"

Patient.create!(
  name: 'William',
  cpf: '767.760.999-60')
