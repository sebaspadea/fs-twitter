require 'telegram/bot'
class TweetsController < ApplicationController
  before_action :set_tweet, only: [:destroy]

  def index
    @tweets = Tweet.all
    @tweet = Tweet.new
  end

  def new
    @tweet = Tweet.new
  end

  def create
    @tweet = Tweet.new(tweet_params)
    @tweet.user = current_user
    if @tweet.save!
      redirect_to tweets_path
    else
      render :new
    end
    # token = "1766018784:AAH5_x_sRAhU32B_CKkgMR6EjtayVUYM1Qw"
    # Telegram::Bot::Client.run(token) do |bot|
    #   bot.listen do |message|
    #     bot.api.send_message(chat_id: message.chat.id, text: "#{@tweet.message}")
    #   end
    # end
  end

  def destroy
    @tweet.destroy
    redirect_to tweets_path
  end

  private

  def set_tweet
    @tweet = Tweet.find(params[:id])
  end

  def tweet_params
    params.require(:tweet).permit(:message)
  end
end
