class Comment < ActiveRecord::Base
	belongs_to :article
	belongs_to :user

	validates :body, presence: { message: 'message body can not be empty'}
	validates :body, length: {maximum: 350, too_long: "%{count} characters is the maximum alowed for comment message"}

end