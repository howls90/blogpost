class Post < ApplicationRecord
	belongs_to :user
	belongs_to :category
	has_many :comments

	mount_uploader :image, ImageUploader

	validates :title, presence: true
	validates :topics, presence: true
	validates :header, presence: true, length: { in: 50..200 }
	validates :body, presence: true
	validates :image, presence: true
	validates :category, presence: true

	after_create :notify_users

	def notify_users()
		NewPostWorker.perform_async()
	end

	def topic_list()
		return self.topics.split(',')
	end

	def categories()
		list = []
		Category.all.each do |c|
			list.append([c.name, c.id])
		end

		return list
	end
end
