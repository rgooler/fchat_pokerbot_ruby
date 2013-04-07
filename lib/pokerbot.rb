#!/usr/bin/env ruby
# -*- encoding: utf-8 -*-

require 'libfchat/fchat'
require 'yaml'
require './deck.rb'

class Pokerbot < Libfchat::Fchat
  attr_accessor :deck

  # Respond to private messages
  def got_PRI(message)
    if message['message'].downcase =~ /^!deal/
      p "Dealing cards"
      msg = @deck.draw()
      self.send('PRI',message['character'],msg)
      sleep(1)
    else
      msg = "Pokerbot 1.1 by Jippen Faddoul ( http://github.com/jippen/fchat_pokerbot_ruby )"
      self.send('PRI',message['character'],msg)
      sleep(1)
    end
  end
  
  # Respond to messages in chatrooms
  def got_MSG(message)
    p "------"
    if message['message'].downcase =~ /^!deal/
      msg = message['character'] + ": " + @deck.draw()
      self.send('MSG',message['channel'],msg)
      sleep(1)
    end
  end
end
