class CLI
  def call
    API.new.call_api
    puts "Welcome to the Breaking Bad Character Finder!"
    list_characters
    choose_a_character

  
  end
  
  def choose_a_character
    puts ""
    input = gets.strip.to_i-1
    char = Character.find(input)
    character_details(char)
    
    
  end
  
  def list_characters
    puts ""
    puts "Please choose a number."
    puts ""
    Character.all.each.with_index(1) do |char, index|
      puts "#{index}. #{char.name}"
    end
    puts ""
    puts "Enter your number here."
  end
  
  def character_details(char)
    puts ""
    puts "_______#{char.name}_________"
  end
  
end

# @char_id = char_id
#     @name = name
#     @birthday = birthday
#     @occupation = occupation
#     @img = img
#     @status = status
#     @appearance = appearance
#     @nickname = nickname
#     @portrayed = portrayed
#     @url = url