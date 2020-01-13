Rails.application.routes.draw do
  get 'students/index'
  namespace :auth do
    resources :topics
    
  end
  namespace :auth do
    end
  namespace :auth do
    end
  namespace :auth do
    get 'users/index'
    post 'users/update_roles'
  end
  resources :roles
  namespace :auth do
    get 'responses/index'
    get 'responses/new'
    post 'responses/create'
    get 'responses/show'
    get 'responses/edit'
    patch 'responses/update'
    get 'responses/delete'
    delete 'responses/destroy'
  end
  namespace :auth do
    get 'questions/index'
    get 'questions/new'
    post 'questions/create'
    get 'questions/show'
    get 'questions/edit'
    patch 'questions/update'
    get 'questions/delete'
    delete 'questions/destroy'
  end

  namespace :auth do
    get 'dashboard/index'
  end
  devise_for :users
  get 'pages/home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'pages#home'

end
