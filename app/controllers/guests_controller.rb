class GuestsController < ApplicationController
	def guest_signup_page
		@guest = Guest.find(params[:id])
	end

	def guest_login_page
		@guest = Guest.find(params[:id])
	end


	def show
		@guests = Guest.all
		@guest = Guest.find(params[:id])
		@movements = Movement.all
		@movement = Movement.find(params[:movement_id]
	end


end
