Rails.application.routes.draw do
  devise_for :users
  get 'home/index'
  root to: 'home#index'
  resources :works, only: [:index, :show] 
  resources :directors, only: [:index, :show]
  resources :genres, only: [:show]

  get 'help/' => 'help#index'
  post 'help/submit' => 'help#submit'
  get 'help/received' => 'help#received'

  namespace :login do
    get 'my_page/index'
    root to: 'my_page#index'
    resources :directors, except: [:index, :show]
    resources :works, except: [:index, :show] do
      resources :reviews, except: [:index, :show]
    end
    resources :profiles, except: [:index]
  end

  namespace :api do
    resources :works, only: [:index, :create, :update]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
