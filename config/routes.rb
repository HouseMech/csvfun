Rails.application.routes.draw do
  get 'welcome/index'

  resources :graphs

  root 'welcome#index'
end
