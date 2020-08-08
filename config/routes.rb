Rails.application.routes.draw do
  resources :machine_in_sections
  resources :sections
  resources :machines
  resources :component_in_machines
  resources :component_materials
  resources :components
  resources :buy_options
  resources :materials
  resources :people
  resources :planets
  resources :factions
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
