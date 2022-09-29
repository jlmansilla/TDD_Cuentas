Rails.application.routes.draw do
  api_version(:module => "Api::V1", :path => {:value => "api/v1"}, :defaults => {:format => "json"}) do
    resources :users
  end
end