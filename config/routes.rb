Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      get '/students' => 'students#index'
      get '/students/:id' => 'students#show'
      post '/students' => 'students#create'
      patch '/students/:id' => 'students#update'
      delete '/students/:id' => 'students#destroy'

      get '/experiences' => 'experiences#index'
      get '/experiences/:id' => 'experiences#show'
      post '/experiences' => 'experiences#create'
      patch '/experiences/:id' => 'experiences#update'
      delete '/experiences/:id' => 'experiences#destroy'

      get '/educations' => 'educations#index'
      get '/educations/:id' => 'educations#show'
      post '/educations' => 'educations#create'
      patch '/educations/:id' => 'educations#update'
      delete '/educations/:id' => 'educations#destroy'
    
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
