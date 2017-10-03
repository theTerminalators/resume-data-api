Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      get '/students' => 'students#index'
      post '/students' => 'students#create'
      get '/students/:id' => 'students#show'
      delete '/students/:id' => 'students#destroy'
      patch '/students/:id' =>'students#update'
    
      get '/skills' => 'skills#index'
      post '/skills' => 'skills#create'
      get '/skills/:id' => 'skills#show'
      patch '/skills/:id' => 'skills#update'
      delete '/skills/:id' => 'skills#destroy'

      get '/capstones' => 'capstones#index'
      post '/capstones' => 'capstones#create'
      get '/capstones/:id' => 'capstones#show'
      patch '/capstones/:id' => 'capstones#update'
      delete '/capstones/:id' => 'capstones#destroy'      
    end
  end
end
