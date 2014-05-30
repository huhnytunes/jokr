require_relative 'viewer'
require_relative 'reddit'

class Controller 

  def initialize
    @viewer = Viewer.new
    @model = Model.new 
    start
  end 

  def welcome_screen 
    @viewer.welcome_screen
    get_choice
  end 

  def get_choice
    input = @choice_screen 
    case input 
    when 1 
      get_joke
    when 2 
      get_image 
    else 
      puts "Come back when you are ready."
    end 
  end 

  def get_joke
    joke = @model.get_joke_from_reddit
    @viewer.display_joke(joke)
    get_punch_line
  end 

  def get_image 
    image = @model.get_funnu_image_from_reddit
    @viewer.display_image(image)
    input = @viewer.see_another?
    another_joke?(input)
  end 

  def get_punch_line 
    punch_line = @model.get_punch_line_from_reddit
    input = @viewer.display_punch_line(punch_line)
    another_joke?(input)
  end 

  def another_joke?(response)
    if response == 'yes' #|| 'Yes' || 'yeah'
      get_joke
    else
      @viewer.good_bye
    end  
  end 
   
end 


# DRIVER 

Controller.new