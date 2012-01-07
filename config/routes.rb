Lamefriends::Application.routes.draw do

	root :to => 'show#show'
	
	match "/auth/:provider/callback" => "sessions#create"
	match "/signout" => "sessions#destroy", :as => :signout


end
