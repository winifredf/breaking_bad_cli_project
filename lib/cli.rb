class CLI
  def call
    API.new.call_api
    puts "Welcome to the Breaking Bad Character Finder!"
    input = gets.strip.to_i
    list_characters(input)
    choose_a_character
    
  end
  
  def list_characters(input)
    Character.all.each.with_index (1) do |char, index|
      puts "#{index}. #{char.name}"
      
    end
  end
  
  def choose_a_character
    puts ""
    puts "Please choose a character for additional information."
    input = gets.strip.to_i
  end
  
end