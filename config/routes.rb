Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get '/dashboard', to: 'dashboard#index'
  get '/dashboard/messages', to: 'dashboard#messages'

  resources :chatrooms, only: :show do
    resources :messages, only: :create
  end

  get 'chatrooms/:user_id/contact', to: 'chatrooms#contact', as: 'contact'

  resources :pets
  get '/my_pets', to: 'pets#my_pets'

  resources :posters, only: %i[edit update show new create] do
    get 'confirm', to: :confirm
  end

  get 'posters/:poster_id/print', to: 'posters#print', as: 'print_poster'
  get 'posters/:poster_id/found', to: 'posters#mark_as_found', as: 'found'

  resources :reports, except: %i[destroy] do
    get 'confirm', to: :confirm
  end
end
