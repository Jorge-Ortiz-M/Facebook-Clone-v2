Rails.application.routes.draw do

  post 'add_user_chat', to: "user_rooms#add_user_chat"
  delete 'remove_user_chat', to: "user_rooms#remove_user_chat"

  resources :rooms, only: [:create, :show] do
    resources :messages, only: [:create]
  end
  
  resources :posts, only: [:new, :create, :edit, :update, :destroy]

  get 'omniauth_test', to: 'home#display_omniauth'
  devise_for :users, controllers: {
                                    omniauth_callbacks: 'users/omniauth_callbacks',
                                    sessions: 'users/sessions',
                                    invitations: 'users/invitations'
                                  }
  devise_scope :user do
    get 'sign_out' => 'devise/sessions#destroy'
  end

  root 'pages#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
