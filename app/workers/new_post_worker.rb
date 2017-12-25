class NewPostWorker
  include Sidekiq::Worker

  def perform(value)
  	User.all.each do |user|
  		UserMailer.welcome_email(user).deliver
  	end
  end
end
