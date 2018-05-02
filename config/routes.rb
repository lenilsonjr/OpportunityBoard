Rails.application.routes.draw do
  root to: "home#index"
  devise_for :users,
             path: "auth", 
             path_names: { 
                sign_in: 'login', 
                sign_out: 'logout',
                registration: 'account',
                sign_up: 'register'
             },
             controllers: {
                sessions: 'users/sessions',
                registrations: 'users/registrations'
             }
end
