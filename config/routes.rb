Ticketee::Application.routes.draw do
  devise_for :users
  
  default_url_options :host => "localhost:3000"
  
  resources :projects do
    resources :tickets
  end
  
  root :to => 'projects#index'
  
end
