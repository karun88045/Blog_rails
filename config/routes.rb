Rails.application.routes.draw do
  # get 'posts/index'
  # get 'posts/new'
  # get 'posts/edit'
  # get 'posts/show'
  # get 'posts/update'
  # get 'posts/destroy'
  # get 'categories/index'
  # get 'categories/new'
  # get 'categories/create'
  # get 'categories/edit'
  # get 'categories/destroy'
  # get 'admin/dashboard'
  devise_for :users
  root "my_blogs#index"
  resources :courses
  resources :my_blogs do 
    collection do 
      get :cat_wise_post
    end
  end
  get 'my_blogs/contact'
  resources :admin do
    collection do
      get :category
      get :post
      get :user
    end
    
  end
  resources :categories
  resources :posts
  get '/search', to: 'my_blogs#search'

  # get 'my_blogs/index'
  # get 'my_blogs/new'
  # get 'my_blogs/edit'
  # get 'my_blogs/show'
  # get 'my_blogs/update'
  # get 'my_blogs/create'
  # get 'my_blogs/destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
end
