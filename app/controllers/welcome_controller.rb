class WelcomeController < ApplicationController
	def index
		@info = Story.find(:all)
	end
end
