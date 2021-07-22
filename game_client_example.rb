require 'rest-client'
require 'json'

class GameClient
  attr_accessor :uri, :headers

  def initialize
    @uri = 'https://lq-space.herokuapp.com'
  end

  def login(email, password)
    response = RestClient.post("#{uri}/sessions.json", {email: email, password: password})
    token = JSON.parse(response.body)["token"]
    @headers = { Authorization: token }
  end

  def get(endpoint)
    response = RestClient.get("#{uri}/#{endpoint}.json", headers)
    JSON.parse(response.body)
  end

  def locations
    get :locations
  end

  def contracts
    get :contracts
  end

  def players
    get :players
  end

  def send_command(command, args={})
    RestClient.post("#{uri}/send_command.json", {command: command, args: args}, headers)
  end
end
