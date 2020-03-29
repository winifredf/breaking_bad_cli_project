class Character
  
  attr_accessor :char_id, :name, :birthday, :occupation, :img, :status, :appearance, :nickname, :portrayed, :url
  
  @@all = []
  
  def initialize(char_id, name, birthday, occupation, img, status, appearance, nickname, portrayed, url)
    @char_id = char_id
    @name = name
    @birthday = birthday
    @occupation = occupation
    @img = img
    @status = status
    @appearance = appearance
    @nickname = nickname
    @portrayed = portrayed
    @url = url
    @@all << self
  
  def self.all
    @@all
  end
end