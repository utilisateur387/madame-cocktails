Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'cocktails#index'

  resources :cocktails, only: [:index, :show, :new, :create] do
    # resources :doses, only: [:new, :create]
    resources :doses, only: [:create]
  end

  resources :doses, only: :destroy

  get '/test', to: 'cocktails#test'
end
