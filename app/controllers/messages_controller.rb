class MessagesController < ApplicationController
  def index
    @message = Message.new

    @messages = Message.all
  end
   #messageをすべて取得する。
  def create
    @message = Message.new(message_params)
    @message.save
    redirect_to root_path , notice: 'メッセージを保存しました'
  end

  private
  def message_params
    params.require(:message).permit(:name, :body)
  end
  ## ここまで
end