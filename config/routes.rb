Rails.application.routes.draw do
  api_version(:module => "Api::V1", :path => {:value => "api/v1"}, :defaults => {:format => "json"}) do
    end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
