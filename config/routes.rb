Rails.application.routes.draw do
  get 'new/new_gossip'
  post 'new/new_gossip', to: 'new#new_gossip_post'
  get 'user_page/:user', to: 'user_page#user_page', :as => :user_page
  get 'sign_up/', to: 'sign_up#sign_up'
  post 'sign_up/', to: 'sign_up#sign_up_post'
  get '/landing_page/:user', to: 'sign_up#landing_page', :as => :landing_page
  get '/home', to: 'the_gossip_project#home', :as => :home
  get '/the_gossip_project/team'
  get '/the_gossip_project/contact'
  get '/gossips/:id', to: 'gossips#gossip', :as => :gossip
end
