Rails.application.routes.draw do

  root to: 'homes#top'

  resources :users, only: [:edit, :index, :show, :update]
  get 'users/unsubscribe' => 'users#unsubscribe'


  resources :tweets, only: [:destroy, :index, :new, :show]


  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

end
