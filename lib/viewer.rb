require "launchy"

class Viewer

  def welcome_screen
    puts "\nWelcome to Jokr. Get ready to laugh.\n"
  end 

  def choice_screen
    puts "What would you like to see?\n" 
    puts '1 for a Joke'
    puts '2 for a Funny Picture' 
    gets.chomp 
  end 

  def display_joke(joke)
    puts "\n#{joke}\n"
    sleep(3)
  end 

  def display_image(punchline, image)
    puts "\n#{punchline}"
    sleep(3)
    Launchy.open(image)
  end 

  def display_punch_line(punch_line)
    puts punch_line
    return see_another?
  end 

  def see_another?
    puts "\nWould you like to laugh again ?"
    gets.chomp
  end 

  def good_bye
    puts "Come back soon !!"
    exit  
  end 

end 