Rails.application.routes.draw do
  get 'welcome/index'

  resources :power_consumption_entries

  root 'welcome#index'
end
