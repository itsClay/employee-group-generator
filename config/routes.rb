Rails.application.routes.draw do
  namespace :api do
    get 'group/index'
  end

  namespace :api do
    get 'group/create'
  end

  namespace :api do
    get 'group/destroy'
  end

  namespace :api do
    get 'company/create'
  end

  namespace :api do
    get 'company/destroy'
  end

  namespace :api do
    get 'employee/create'
  end

  namespace :api do
    get 'employee/destroy'
  end

  namespace :api do
    get 'sessions/create'
  end

  namespace :api do
    get 'sessions/destroy'
  end

  namespace :api do
    get 'users/index'
  end

  namespace :api do
    get 'users/create'
  end

  namespace :api do
    get 'users/show'
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
