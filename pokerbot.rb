#!/usr/bin/env ruby
# -*- encoding: utf-8 -*-

require 'libfchat/fchat'
require 'yaml'

bot = Libfchat::Fchat.new
config = YAML.load_file('pokerbot.yaml')

server = 'ws://chat.f-list.net:9722'
user   = 'jippenbots'
pass   = 'ppci7zIDerxRPCU2uYL1'
char   = 'Pokerbot'

bot.login(config['server'],config['username'],config['password'],config['character'])
