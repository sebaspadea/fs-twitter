require File.expand_path('../config/environment.rb', __dir__)

require 'telegram/bot'

token = "1766018784:AAH5_x_sRAhU32B_CKkgMR6EjtayVUYM1Qw"

Telegram::Bot::Client.run(token) do |bot|
  bot.listen do |message|
    bot.api.send_message(chat_id: message.chat.id, text: "#{tweet.message}")
  end
end