class ShowController < ApplicationController

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
end
