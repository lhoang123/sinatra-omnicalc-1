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

get("/square_root/new") do 
  "
  <p>Enter a number
  </p>"
  erb(:square_root_form)
 
end

get("/square_root/results") do 

  @the_num = params.fetch("number_value")
  @the_result = Math.sqrt(params.fetch("number_value").to_f)

  erb(:square_root_results)
end 

get("/random/new") do 

  erb(:random_form)
 
end

get("/random/results") do 
  @the_min_num = params.fetch("minimum_input").to_f
  @the_max_num = params.fetch("maximum_input").to_f
  @the_result = rand(@the_min_num..@the_max_num)
  erb(:random_results)
end 

get("/payment/new") do 

  erb(:payment_form)
 
end

get("/payment/results") do 
  @apr_num = params.fetch("apr_input").to_f
  @year_num = params.fetch("year_input").to_i
  @principal_num = params.fetch("principal_input").to_f

  @the_numerator = (@apr_num/1200 * @principal_num)
  @the_denominator = (1-(1+@apr_num/100/12)**(-@year_num/12))
  @the_result = (@the_numerator / @the_denominator).to_fs(:currency)

  erb(:payment_results)
end 
