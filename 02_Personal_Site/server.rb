require 'sinatra'
require "sinatra/reloader"
require "pry"

enable(:sessions)


get "/tutifrutti" do
    "BON GIORNO"
end


get "/about" do
    status (450)
    @mostrar = true
    @usuarios = ["Pepe", "Luis", "Maria"]
    erb :about
    session[:my_name] = "Tony"

end

get "/time" do
    @time = Time.now
    @name = session[:my_name]
    erb :time
end


get "/twitter/:usuario/:location" do
    @usuario = params[:usuario]
    @location = params[:location]
    erb :usuario
end
