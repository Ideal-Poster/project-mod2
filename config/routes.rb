Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'users#home'

  get '/login/' , to: 'users#login', as: 'login'
  delete '/logout', to: 'users#logout', as: 'logout'
  get '/find_user/' , to: 'users#find_user', as: 'find_user'
  post 'books/:id', to: 'books#favorite', as: 'favorite'


  resources :users
  resources :books
  resources :rhymes
  resources :favorite_books
  resources :favorite_rhymes 
  resources :book_categories 
  resources :rhyme_categories
end
