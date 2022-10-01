Rails.application.routes.draw do
  api_version(:module => "Api::V1", :path => {:value => "api/v1"}, :defaults => {:format => "json"}) do
    resources :tables, only: %i[create show] 
    resources :users, only: %i[index]
    resources :meals, only: %i[index show]
    
  end
end
