puts 'Destroying all previous data'
Doctor.destroy_all

#CRM é formado somente por números seguido da Sigla do Estado ex: 0000/SP minímo 4 dígitos ou 0000000000/SP máximo 10 dígitos
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
