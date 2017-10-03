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
    end
  end
end
