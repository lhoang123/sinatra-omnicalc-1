require "sinatra"
require "sinatra/reloader"

get("/") do
  "
  <p>Enter a number
  </p>"

  erb(:square_with_form)

end

get("/square/new") do 
 erb(:square_results)
end
