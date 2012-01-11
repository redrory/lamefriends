class ShowController < ApplicationController
layout :resolve_layout

	def show
 	if current_user 
 	
	@graph = Koala::Facebook::API.new(current_user.token)
	@rory = @graph.get_object("rushstephmiller")
	@rush_me_friends = @graph.get_connections("me", "mutualfriends/#{622121349}")
	
	@gen = @graph.get_object('834835144')
	@my_pic = @graph.get_picture("me")

	else
	 	redirect_to :root
	end
		
	end

	def login

	end

	private

	def resolve_layout
		case action_name
		when "login"
			"landing"			
		else
			"application"
		end
	end
end
