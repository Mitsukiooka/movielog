Rails.application.routes.draw do
  devise_for :users
  get 'home/index'
  root to: 'home#index'
  resources :works, only: [:index, :show] do
    get 'higher' => 'works#move_higher', as: 'higher', on: :member
  end
  resources :directors, only: [:index, :show]
  resources :genres, only: [:show]



  namespace :login do
    get 'my_page/index'
    root to: 'my_page#index'
    resources :directors, except: [:index, :show]
    resources :works, except: [:index, :show] do
      resources :reviews, except: [:index, :show]
    end
    resources :profiles, except: [:index]

  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
