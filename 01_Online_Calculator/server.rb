require "sinatra"
require "./lib/calculator.rb"
require "sinatra/reloader" if development?
require "pry"

get "/home" do
    erb :home
end

get "/other" do
  status(200)
  "The other page"
end

get "/hi" do
#   @hola = hola
  # redirect "/other"
end

post "/calculate" do
  @first = params[:first_data].to_f
  @second = params[:second_data].to_f
  @operator = params[:operation]

    case @operator

      when "add"
        @res = Calculator.add(@first, @second)
      when "sub"
        @res = Calculator.sub(@first, @second)
      when "mul"
        @res = Calculator.mul(@first, @second)
      when "div"
        @res= Calculator.div(@first, @second)
    end

  erb(:calculate)

end





