Rails.application.routes.draw do

  resources :projects do
    put :sort, on: :collection
  end
  devise_for :users
  root to: "pages#home"
  get 'pages/home'
  get 'pages/about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
