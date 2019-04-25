Rails.application.routes.draw do
  get 'welcome/index'

  resources :power_consumption_entries, only: [:index, :create] do
    collection {post :import}
  end



  root to: "power_consumption_entries#index"
end
