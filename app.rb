require "sinatra"
require "sinatra/reloader"

get("/") do
  "
  <h1>Welcome to your Sinatra App!</h1>
  <p>Define some routes in app.rb</p>
  "
end

get("/process_results") do
  @num_dice = params.fetch("").to_i
  @num_sides = params.fetch("").to_i
end
