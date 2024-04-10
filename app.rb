require "sinatra"
require "sinatra/reloader"

get("/") do
  "
  <p>Enter a number
  </p>"
  erb(:square_with_form)

end

get("/square/new") do 
  "
  <p>Enter a number
  </p>"
  erb(:square_with_form)
 
end

get("/square/results") do 

  @the_num = params.fetch("number_value")
  @the_result = params.fetch("number_value").to_f * params.fetch("number_value").to_f

  erb(:square_results)
end 
