Rails.application.routes.draw do

  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  root to: 'homes#top'

  resources :users, only: [:edit, :index, :show, :update]
  get 'users/unsubscribe' => 'users#unsubscribe'

  resources :tweets, only: [:destroy, :index, :new, :show, :create]

end
