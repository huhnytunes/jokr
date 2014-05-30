class Viewer

  def welcome_screen
    puts "Welcome to Jokr. Get ready to laugh."
    puts 
  end 

  def choice_screen
    puts "What would you like to see?" 
    puts 
    puts "1. A joke"
    puts "2. A funny picture"
    puts 
    gets.chomp 
  end 

  def display_joke(joke)
    puts 
    puts joke
    puts 
    sleep(3)
  end 

  def display_image(image)
    puts image 
    puts 
  end 

  def display_punch_line(punch_line)
    puts punch_line
    see_another?
  end 

   def see_another?
    puts 
    puts "Would you like to laugh again ?"
    gets.chomp
  end 

  def good_bye
    puts "Come back soon !!"
  end 

end 