require "sinatra"
require "sinatra/reloader"

get("/") do
  # "
  # <h1>Welcome to your Sinatra App!</h1>
  # <p>Define some routes in app.rb</p>
  # "
  erb(:homepage)
end

get("/process_results") do
  @num_dice = params.fetch("dice_count").to_i
  @num_sides = params.fetch("sides").to_i

  

  erb(:results)
end
