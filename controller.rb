require_relative 'viewer.rb'
require_relative 'model.rb'


class Reddit
  def initialize
    @joke = '' 
  end 

  def grab_joke_from_reddit 
    format_joke
  end 

  def format_joke 
  end 

end 


class Controller 

  def initialize
    @viewer = Viewer.new
    @model = Reddit.new 
    start
  end 

  def start 
    input = @viewer.welcome_screen
    if input == 'yes' #|| 'Yes' || 'yeah'
      joke_parse
    else 
      puts "Come back when you are ready."
    end 
  end 

  def joke_parse
    @joke = @model.grab_joke_from_reddit
    joke_ready
  end 

  def joke_ready
    input = @viewer.display_joke(@joke)
    another_joke?(input)
  end 

  def another_joke?(response)
    if response == 'yes' #|| 'Yes' || 'yeah'
      joke_parse
    else
      @viewer.good_bye
    end  
  end 
   
end 




# DRIVER 

Controller.new