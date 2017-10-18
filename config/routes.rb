Rails.application.routes.draw do

  root to: "students#index"

  namespace :api do
  
    namespace :v1 do
      get "/students" => "students#index"
      get "/students/:id" => "students#show"
      post "/students" => "students#create"
      patch "/students/:id" => "studens#update"
      delete "/students/:id" => "students#destroy"
    end

    namespace :v2 do
      get "/students" => "students#index"
      get "/students/:id" => "students#show"
      post "/students" => "students#create"
      patch "/students/:id" => "studens#update"
      delete "/students/:id" => "students#destroy"
    end  
  
  end

end
