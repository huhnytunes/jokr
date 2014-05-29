class Viewer

  def welcome_screen
    puts "Welcome to Jokr. Are you ready to laugh?"
    gets.chomp 
  end 

  def display_joke(joke)
    puts ''
    puts joke
    puts ''
    sleep(3)
  end 

  def display_punch_line(punch_line)
    puts punch_line
    see_another?
  end 

   def see_another?
    puts ''
    puts "Would you like to laugh again ?"
    gets.chomp
  end 

  def good_bye
    puts "Come back soon !!"
  end 

end 