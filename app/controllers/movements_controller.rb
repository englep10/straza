class MovementsController < ApplicationController
	def index
		@movements = Movement.all
		@movement = Movement.sample
	end

	def show
		#@movement = Movement.find(params[:movement_id])
	end

	
	def new
		@movement = Movement.new
	end

	def create
		@movement = Movement.new(movement_params)
		if @movement.save
			redirect_to @movement
		else
			render :new
		end
	end

	private

		 def movement_params
			params.require(:movement).permit(:title, :location, :time, :description, :movement_key)
		end
	
end
