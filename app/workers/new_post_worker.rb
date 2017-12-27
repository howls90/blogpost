class NewPostWorker
  include Sidekiq::Worker

  def perform()
  	User.all.each do |user|
  		UserMailer.welcome_email(user).deliver
  	end
  end
end
