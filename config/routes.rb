Rails.application.routes.draw do
  devise_for :users
  mount Sidekiq::Web => "/sidekiq" if defined?(Sidekiq) # monitoring console
  get :protected, to: 'login#protected'
  root 'home#index'

  devise_scope :user do
    authenticated :user do
      # root 'home#index', as: :authenticated_root
    end

    unauthenticated do
      # root 'devise/sessions#new', as: :unauthenticated_root
    end
  end

  resources :donations
end
