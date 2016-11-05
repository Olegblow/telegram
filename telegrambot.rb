#!/usr/bin/env ruby
#require ''
require "telegram/bot"
token = '190168130:AAEhzNuyAC4a2I9hCJ_3SIjmY4sQtVacRIU'

help="We have function : /start /orly /help /lift "
Telegram::Bot::Client.run(token) do |bot|
  bot.listen do |message|

    case message.text

   	 	when '/start'
      		bot.api.sendMessage(chat_id: message.chat.id, text: "Hello, #{message.from.first_name} pls 	choice  command #{help}")

  		when '/orly'
  			bot.api.sendMessage(chat_id: message.chat.id, text: "Orly is love Orly is life ♥♥♥: https://vk.com/mdk88 ")
      	
      	when '/help'
      		bot.api.sendMessage(chat_id: message.chat.id, text: "pls 	choice  command #{help}")

      	when  '/lift'
      		bot.api.sendMessage(chat_id: message.chat.id, text: "https://pp.vk.me/c627517/v627517369/404a8/o8LJIRwV1SM.jpg @yagema")
      		

      	else 
      		bot.api.sendMessage(chat_id: message.chat.id, text: "command not found http://cs624317.vk.me/v624317592/3b774/ApnkYcdAzFw.jpg")

    end

    fr=" {chat id :#{message.chat.id} \n name :  #{message.from.first_name} \n text : #{message}  }\n"
   

   File.open('telegra.txt', 'a'){ |f| f.write(fr) }

  end
end