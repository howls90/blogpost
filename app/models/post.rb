class Post < ApplicationRecord
	belongs_to :user

	has_many :comments

	after_create :notify_users

	def notify_users()
		NewPostWorker.perform_async('bob')
	end
end
