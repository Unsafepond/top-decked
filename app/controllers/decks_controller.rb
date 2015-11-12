class DecksController < ApplicationController

	def new
		@user = current_user
		@cards = Card.all
	end

end
