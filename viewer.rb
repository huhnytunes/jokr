class Viewer

  def welcome_screen
    puts "Welcome to Jokr. Are you ready to laugh?"
    gets.chomp 
  end 

  def display_joke(joke)
    puts "#{joke}"
    see_another?
  end 

  def see_another?
    puts "Would you like to laugh again ?"
    gets.chomp
  end 

  def good_bye
    puts "Come back soon !!"
  end 
end 