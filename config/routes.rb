Rails.application.routes.draw do
	root 'static_pages#home'
	get '/signup', to: 'users#new'
	post '/signup', to: 'users#create'
	get '/login', to: 'sessions#new'
	post '/login', to: "sessions#create"
	delete '/logout', to: 'sessions#destroy'
	get '/new_event', to: 'events#new'
	post '/new_event', to: 'events#create'
	post '/attend', to: 'invites#create'
	delete '/unattend', to: 'invites#destroy'
	resources :users
	resources :events

end
