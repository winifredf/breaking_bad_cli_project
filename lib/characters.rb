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
  end
  
  def self.all
    @@all
  end
  
  def name
    @name
  end

  def self.find(id)
    self.all{id-1}
  end
end