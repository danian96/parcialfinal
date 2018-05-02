Rails.application.routes.draw do
  resources :inscriptions
  resources :list_of_children
  resources :ponderations
  resources :permissions
  resources :book_of_permissions
  resources :planner_details
  resources :planners
  resources :students
  resources :pondered_activities
  resources :pondered_planners
  resources :subjects
  resources :schedule_details
  resources :schedules
  resources :parallels
  resources :grades
  resources :calendar_details
  resources :calendar_tags
  resources :calendars
  resources :managements
  resources :turns
  # Back admin routes start
  namespace :admin do
    resources :users

    # Admin root
    root to: 'application#index'
  end
  # Back admin routes end

  # Front routes start
  devise_for :users, only: [:session, :registration], path: 'session',
             path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }

  # Application root
  root to: 'application#home'
  # Front routes end
end
