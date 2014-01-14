class MessagesController < ApplicationController
  
  def index
  end

  def create 
    email = params[:email]
    text = params[:text]
    Rails.logger.info"--------params--------#{params.inspect}---------------"
    Rails.logger.info"--------params--------#{email}----------#{text}------" 

    MessageMailer.send_message(email, text).deliver!
    redirect_to messages_url 	
  end
end
