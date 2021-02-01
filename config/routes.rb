Rails.application.routes.draw do
  root 'home#index'

  resources :schedules, only: [:new, :create, :show]
  resources :appointments, only: [:new, :create, :show, :destroy]
  devise_for :users, controllers: {sessions: 'users/sessions'}

  devise_scope :user do
    get 'login', to: 'users/sessions#new', as: 'login'
    get 'logout', to: 'users/sessions#destroy'
    get 'register', to: 'users/registrations#new'
  end

  get 'showAll', to: 'appointments#showAll', as: 'showAll'

end
