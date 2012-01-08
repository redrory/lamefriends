class ShowController < ApplicationController

	def show
		@graph = Koala::Facebook::API.new(current_user.token)
		@rory = @graph.get_object("rushstephmiller")
		@private_rory = @graph.get_connections("me", "likes")
		@rush_me_friends = @graph.get_connections("me", "mutualfriends/#{622121349}")
		
		@my_pic = @graph.get_picture("me")
		
	end
end
