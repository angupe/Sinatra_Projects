require "sinatra"
require "sinatra/reloader"
require "imdb"

require "./lib/search.rb"

require "pry"


get "/" do
    erb :home
end

post "/result" do
    @movie = MovieSearcher.search(params[:searching])
    @answer = MovieSearcher.answer(params[:searching])
    @poster = MovieSearcher.answer(params[:searching])
    erb :search_result
end

get "/answer" do
    erb :answer
end
