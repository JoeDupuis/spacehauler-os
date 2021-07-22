#!/usr/bin/env ruby
require './dotenv'
require './game_client_example'
puts 'hello'

puts ENV['username'], ENV['password']
client = GameClient.new
client.login(ENV['username'], ENV['password'])
