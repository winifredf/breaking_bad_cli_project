require 'pry'
require 'rest-client'
require 'json'
require_relative 'characters'

resp = RestClient.get("https://www.breakingbadapi.com/api/characters")

characters_hash = JSON.parse(resp.body, symbolize_names:true)
characters_array = characters_hash

characters_array.each do |char|
  character.new(char[:char_id], char[:name], char[:birthday], char[:occupation], char[:img], char[:status], char[:appearance], char[:nickname], char[:portrayed], char[:url])
  
end
