Rails.application.routes.draw do
  devise_for :users
  
  #devise_for :users, :controllers => { registrations: 'registrations' }
  #resources :users
  
   #devise_scope :user do
     #get "/signup" => "registrations#new", :as => :new_user_registration
     #get "/users" => "devise/registrations#create", :as => :user_registration
     #end
   
   #user_registration
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
   #resources :users
   #resources :user_sessions, only: [:new, :create]
   #resources :user_registration #, only: [:new, :create]
   #get 'registrations/signup' => 'devise/registrations#new', :as => :new_user_registration

end
