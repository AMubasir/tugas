Rails.application.routes.draw do

  get '/login' => 'mod/sessions#new'
  get '/logout' => 'mod/sessions#destroy'

  namespace :mod do
    resources :pengembalians
    resources :transaksis
    resources :pelanggans
    resources :mobils
    resources :sessions, only: [:new, :create, :destroy]
    resources :admins, only: [:index, :edit, :update]
  end
end
