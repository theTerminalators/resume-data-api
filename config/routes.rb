Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      get '/students' => 'students#index'
      post '/students' => 'students#create'
      get '/students/:id' => 'students#show'
      delete '/students/:id' => 'students#destroy'
      patch '/students/:id' => 'students#update'

      get '/experiences' => 'experiences#index'
      get '/experiences/:id' => 'experiences#show'
      post '/experiences' => 'experiences#create'
    end
  end
end
