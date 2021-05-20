Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :doctors, except: [:destroy]
  delete "doctors/:id", to: "doctors#destroy", as: :destroy

  resources :patients, except: [:destroy]
  delete "patients/:id", to: "patients#destroy", as: :destroy_patient
end
