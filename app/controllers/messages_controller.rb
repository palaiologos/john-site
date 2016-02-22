class MessagesController < ApplicationController

  def new
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)
    if @message.valid?
      MessageMailer.message_me(@message).deliver_now
      redirect_to contact_path
      flash[:success] = "Message Sent!"
    else
      render 'new'
    end
  end

  private

    def message_params
      params.require(:message).permit(:name, :email, :content)
    end
end
