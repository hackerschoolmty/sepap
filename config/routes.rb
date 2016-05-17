Rails.application.routes.draw do
  resources :students
  resources :course_sessions

  root to: 'course_sessions#index'
end
