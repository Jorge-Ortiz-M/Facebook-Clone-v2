Rails.application.routes.draw do
  resources :posts, only: [:new, :create, :edit, :update, :destroy]

  get 'omniauth_test', to: 'home#display_omniauth'
  devise_for :users, controllers: {
                                    omniauth_callbacks: 'users/omniauth_callbacks',
                                    sessions: 'users/sessions'
                                  }
  devise_scope :user do
    get 'sign_out' => 'devise/sessions#destroy'
  end

  root 'pages#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
