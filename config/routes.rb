Rails.application.routes.draw do

  get 'tweets/index'
  get 'tweets/show'
  get 'tweets/new'
  get 'tweets/destroy'
  root to: 'homes#top'

  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

end
