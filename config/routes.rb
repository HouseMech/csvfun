Rails.application.routes.draw do
  get 'welcome/index'

  resources :power_consumption_entries, only: [:index, :create]

  root 'welcome#index'
end
