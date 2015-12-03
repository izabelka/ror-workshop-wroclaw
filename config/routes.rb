Rails.application.routes.draw do
  devise_for :users
  root to: 'visitors#index'
  
  resources :students do
    get :subjects
  end
  
  #get "/reports/subjects" =>  "/reports/subjects"
  resources :report_subjects
  #get "/reports/subjects" => :report_subjects
  
  resources :teachers do
    get :subjects
  end
  resources :users
  resources :user_sessions, only: [:new, :create]
  #resources :user_registration, only: [:new, :create]
  devise_for :controllers => { registrations: 'registrations' }
  get 'registrations/signup' => 'devise/registrations#new', :as => :new_user_registration
end
