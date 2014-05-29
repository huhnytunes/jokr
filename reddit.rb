require "ruby_reddit_api"
require "launchy"

r = Reddit::Api.new "user", "password"

# results = r.browse "aww"
results = r.browse "jokes"


index = rand(0..24)
p results[index.to_i].title
sleep 3
p results[index.to_i].selftext
# Launchy.open("reddit.com" << results[index.to_i].permalink.to_s)

