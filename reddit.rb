require "ruby_reddit_api"
require "launchy"

class Model 
  def initialize
    @info = Reddit::Api.new "user", "password"
    @results = @info.browse "jokes"
    @cute_images = @info.brows "funny"
    @index = rand(0..24)
  end 

  def get_joke_from_reddit 
    @current_joke = @results.shuffle.first
    @current_joke.title
  end 
 
  def get_funny_image_from_reddit
    funny_image = @results.shuffle.first.url
    if funny_image.over_18 == true
      get_funny_image_from_reddit
    else
      return funny_image
    end
  end

  end

  def get_punch_line_from_reddit
    @current_joke.selftext
  end 
  
end 