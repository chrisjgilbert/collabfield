Rails.application.routes.draw do

  # home page
  root to: 'pages#index'

  #  user registration
  devise_for :users, :controllers => {:registrations => "registrations"}

  # shorten urls
  devise_scope :user do
    get 'login', to: 'devise/sessions#new'
    get 'signup', to: 'devise/registrations#new'
  end

end
