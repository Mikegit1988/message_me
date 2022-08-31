Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #set up root page and login pages
  root 'chatroom#index'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  #add the delete route to 
  delete 'logout', to: 'sessions#destroy'
  post 'message', to: 'messages#create' #this route will post message to @message instance
  
  mount ActionCable.server, at: '/cable' #this code is for ActionCable connection,we called mount to the rack
end
