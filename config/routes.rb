Rails.application.routes.draw do
  root to: 'pages#home'

  get 'about', to: 'pages#about'
  get 'leadgen/advertising/landingpage/lead', to: 'pages#contact', as: 'lead'

  namespace :admin do
    get 'dashboard/main'
    get 'dashboard/user'
    get 'dashboard/blog'
  end

  resources :blogs
  resources :posts

  get 'posts/*missing', to: 'posts#missing'

  get 'query/:else', to: 'pages#something'
  get 'query/:else/:another_one', to: 'pages#something'
end
