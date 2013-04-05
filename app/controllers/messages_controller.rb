class MessagesController < ApplicationController
  
  def new
    @message = Message.new
  end
  
  def create
    @message = Message.new(params[:message])
    if @message.valid?
      flash[:notice] = "Message Sent!"
      redirect_to root_url
    else
      render :new
    end
  end
end