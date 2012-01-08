Lamefriends::Application.routes.draw do

	resources :users 
	root :to => 'show#login'
	
	match "show" => "show#show"
	match "/auth/:provider/callback" => "sessions#create"
	match "/signout" => "sessions#destroy", :as => :signout


end
