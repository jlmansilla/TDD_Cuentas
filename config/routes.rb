Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :shows
      resources :indices
    end
  end
  api_version(:module => "Api::V1", :path => {:value => "api/v1"}, :defaults => {:format => "json"}) do
    resources :users
  end
end
