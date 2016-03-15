class SubscribersController < ApplicationController
	def subscribe
		@email = Subscriber.new({email: params[:email]})

		respond_to do |format|
			if @email.save
				format.html {redirect_to :back, notice: "We added your email to our list"}
				format.json {}
			else
				format.html { redirect_to :back, alert: @email.errors[:email][0]}
				format.json {}
			end
		end
	end

	private

end
