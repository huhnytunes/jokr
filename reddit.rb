require "ruby_reddit_api"
require "launchy"

class Model 
  def initialize
    @info = Reddit::Api.new "user", "password"
    @results = @info.browse "jokes"
    @index = rand(0..24)
  end 

  def get_joke_from_reddit 
    @current_joke = @results.shuffle.first
    @current_joke.title
  end 
 

  def get_punch_line_from_reddit
    @current_joke.selftext
  end 
  
end 