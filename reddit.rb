require "ruby_reddit_api"
require "launchy"



r = Reddit::Api.new "user", "password"

resuts = r.browse "aww"
# results = r.browse "jokes"


index = rand(0..24)
p results[index.to_i].thumbnail
# sleep 3
# p results[index.to_i].selftext
# Launchy.open("reddit.com" << results[index.to_i].permalink.to_s)

Launchy.open(results[index.to_i].url)

