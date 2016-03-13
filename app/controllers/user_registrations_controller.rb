class UserRegistrationsController < Devise::RegistrationsController
	def creat
		super
		if @user.persisted?
			UserMailer.welcome(@user).deliver_now
		end
	end
end