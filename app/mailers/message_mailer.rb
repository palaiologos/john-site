class MessageMailer < ApplicationMailer

  default :to => "johnwi1453@gmail.com"

  def message_me(msg)
    @msg = msg

    mail from: @msg.email, body: @msg.content
  end
end
