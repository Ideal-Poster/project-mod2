Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'users#home'

  resources :users
  resources :books
  resources :rhymes
  resources :favorite_books
  resources :favorite_rhymes 
  resources :book_categories 
  resources :rhyme_categories
end
