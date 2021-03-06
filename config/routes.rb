Rails.application.routes.draw do

  root to: 'homes#top'

  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

end
