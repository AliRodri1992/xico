Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    # Redirests signing out users back to sign-in
    get 'users', to: 'devise/sessions#new'
  end
  mount LetterOpenerWeb::Engine, at: '/letter_opener' if Rails.env.development?
  root 'pages#home'
end
