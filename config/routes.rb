Rails.application.routes.draw do
  root to: 'toilets#index'
  resources :toilets
  devise_for :users, controllers: {
    registrations: 'users/registrations',
  }
  devise_scope :user do
    post 'users/guest_sign_in', to: 'users/sessions#guest_sign_in'
  end
  resources :users do
    collection do
      get 'mypage'
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
