class WelcomeController < ApplicationController
	def index
		@da = Story.find(:all)
	end
end
