class Post < ApplicationRecord
	belongs_to :user
	has_many :comments

	mount_uploader :image, ImageUploader

	validates :title, presence: true
	validates :topics, presence: true
	validates :header, presence: true, length: { in: 50..200 }
	validates :body, presence: true

	after_create :notify_users

	def notify_users()
		NewPostWorker.perform_async()
	end

	def topic_list()
		return self.topics.split(' | ')
	end
end
