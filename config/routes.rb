Rails.application.routes.draw do
  get 'directors/index'
  get 'works/index'
  get 'home/index'
  root to: 'home#index'
  resources :works do
    get 'higher' => 'works#move_higher', as: 'higher', on: :member
  end
  resources :directors
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
