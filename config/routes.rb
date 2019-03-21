Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'home#index'
  get '/login', to: 'session#login'
  post '/login', to: 'session#create_session'
  delete '/logout', to: 'session#destroy_session'
  post '/message', to: 'message#create'
end
