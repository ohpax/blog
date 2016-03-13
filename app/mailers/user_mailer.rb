class UserMailer < ApplicationMailer
	def welcome(user)
		@appname = "KhoBlog"
		mail(
			to: user.email,
			subject: "Wecome to #{@appname}"
			)

	end
end
