Rails.application.routes.draw do
  # get 'users/show'
  root to: 'toilets#index'
  # resources :toilets do
  #   collection do
  #     get 'myposts'
  #   end
  # end

  resources :toilets
  devise_for :users
  # resources :users, only: [:show]
  resources :users do
    collection do
      get 'mypage'
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
