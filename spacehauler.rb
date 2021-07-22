#!/usr/bin/env ruby
require 'bundler'
Bundler.require
require './dotenv'
require './game_client_example'


puts 'hello'

client = GameClient.new
client.login(ENV['username'], ENV['password'])
