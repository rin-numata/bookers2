Rails.application.routes.draw do

  get 'book_comments/create'
  get 'book_comments/destroy'
  devise_for :users
  root to: "homes#top"

  get 'home/about' => 'homes#about', as: 'about'
  delete 'books/:id' =>'books#destroy'
  

  resources :users, only: [:show, :edit, :update, :index]
  resources :books, only: [:show, :index, :edit, :create, :update, :destroy] do
    resources :book_comments, only: [:create]
  end
  
end
