# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview
	def welcome
		UserMailer.welcome(User.new(email: "alaki@gmail.com", password:"danjakapet"))
	end
end
