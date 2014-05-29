require "ruby_reddit_api"

r = Reddit::Api.new "user", "password"

results = r.browse "oneliners"

p index = rand(0..24)
p results[index.to_i].title
