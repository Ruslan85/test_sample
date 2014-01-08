class UserMailer < ActionMailer::Base
  default from: "Ruslanche28@gmail.com"

  def registration_confirmation(user)
  	@user = user
  	attachments["1.jpg"] = File.read("#{Rails.root}/app/assets/images/1.jpg")
  	mail(:to => "#{user.name} <#{user.email}>", :subject => "Registered")  
  end
end
