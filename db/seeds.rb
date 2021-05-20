puts 'Destroying all previous data...'
Doctor.destroy_all
Patient.destroy_all

#CRM é formado somente por números seguido da Sigla do Estado ex: 0000/SP minímo 4 dígitos ou 0000000000/SP máximo 10 dígitos
puts 'Creating doctors...'
Doctor.create!(
  name: 'John',
  crm: 3232,
  crm_uf: 'SP')

Doctor.create!(
  name: 'Jake',
  crm: 3246332,
  crm_uf: 'BA')

Doctor.create!(
  name: 'Josh',
  crm: 3232,
  crm_uf: 'MG')

Doctor.create!(
  name: 'James',
  crm: 6451123,
  crm_uf: 'BA')

puts 'Creating patients...'

Patient.create!(
  name: 'Noah',
  cpf: '371.555.435-51')

Patient.create!(
  name: 'Oliver',
  cpf: '336.590.400-02')

Patient.create!(
  name: 'Elijah',
  cpf: '995.204.960-92')

Patient.create!(
  name: 'William',
  cpf: '767.760.999-60')
