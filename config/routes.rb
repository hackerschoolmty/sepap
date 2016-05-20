Rails.application.routes.draw do
  resources :students
  resources :course_sessions

   namespace :api, path: '/api' do
    api_version(:module => "V1", :header => {:name => "Accept",
                                             :value => "application/vnd.sepap.com+json; version=1"},
                                             :defaults => {:format => :json}, :default => true) do
    end
  end

  root to: 'course_sessions#index'
end
