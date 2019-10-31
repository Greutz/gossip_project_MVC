Rails.application.routes.draw do
  resources :gossips
  resources :city
  post '/gossips/new', to: 'gossips#create'
  get 'user_page/:user', to: 'user_page#user_page', :as => :user_page
  get 'sign_up/', to: 'sign_up#sign_up'
  post 'sign_up/', to: 'sign_up#sign_up_post'
  get '/landing_page/:user', to: 'sign_up#landing_page', :as => :landing_page
  get '/home', to: 'the_gossip_project#home', :as => :home
  get '/the_gossip_project/team'
  get '/the_gossip_project/contact'
end
