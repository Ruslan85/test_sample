class MessageMailer < ActionMailer::Base
  default from: "Ruslanche28@gmail.com"

  def send_message(email, text)
  	@email = email
  	@text = text
  	mail(:to => "#{@email}", :subject => "Commit")  
  end
end
