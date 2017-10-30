Rails.application.routes.draw do
  resources :phone_books
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'sessions#new'
  get :sign_up, to:'users#new'
  post :sign_up, to: 'users#create'

  get :sign_in, to: 'sessions#new'
  post :sign_in, to: 'sessions#create'

  get :sign_out, to: 'sessions#destroy'

end
