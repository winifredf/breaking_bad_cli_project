class CLI
  def call
    API.new.call_api
    puts "Our program works!"
  end
end