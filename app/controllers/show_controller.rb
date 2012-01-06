class ShowController < ApplicationController

	def show
		@graph = Koala::Facebook::API.new(AAAAAAITEghMBAIZCwxH2O2QZCBdaqYsGsNdoG8cIE4qZCgFoRIOIMQOZBnifo7SfQXjUsPdZCZCdH1uZCBvhnVvQNar0gVZBbnnxITdqEW6WoQZDZD)
		@rory = @graph.get_connections("redrorywalker", "likes")
	end
end
