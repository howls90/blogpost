class Post < ApplicationRecord
	belongs_to :user
	has_many :comments

	mount_uploader :image, ImageUploader

	validates :title, presence: true
	validates :header, presence: true, length: { in: 50..133 }
	validates :body, presence: true

	after_create :notify_users

	def notify_users()
		NewPostWorker.perform_async('bob')
	end
end
