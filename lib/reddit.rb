require "ruby_reddit_api"
require "launchy"

class Model 
  attr_reader :filter_results

  def initialize
    @info_funny = Reddit::Api.new "user", "pa1sword"
    @info_results = Reddit::Api.new "user", "pa1sword"
    @funny = @info_funny.browse "funny"
    @results = @info_results.browse "jokes"
  end 


  def get_joke_from_reddit 
    @current_joke = @results.shuffle.first
    get_joke_from_reddit if @current_joke.selftext.length > 50
    @current_joke.title
  end 
 
  def get_punch_line_from_reddit
    @current_joke.selftext
  end 

  def get_funny_image_from_reddit
    @image = @funny.shuffle.first
    @image.url
  end

  def get_image_punch_line
    @image.title
  end

end 