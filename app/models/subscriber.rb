class Subscriber < ActiveRecord::Base
	validates :email, presence: {message: "please enter your email address"}
	validates :email, uniqueness: {message: "We have this email address in our list"}
	validates :email, format: { with:  /\A(\S+)@(.+)\.(\S+)\z/i , message: "please provide a valid email address"}
	validates :email, length: {maximum: 254, too_long: "This email address seems too long!"}
end
