class MicropostMailer < ActionMailer::Base
  default from: "Ruslanche28@gmail.com"

  def micropost_mail(micropost)
  	@micropost = micropost
  	mail(:to => "#{micropost.email}", :subject => "Commit")  
  end
end
