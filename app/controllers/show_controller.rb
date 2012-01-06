class ShowController < ApplicationController

	def show
		@graph = Koala::Facebook::API.new
		@rory = @graph.get_object("redrorywalker")
	end
end
