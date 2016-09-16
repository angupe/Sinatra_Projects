require_relative "../server.rb"
# require "./server"
require "rspec"
require "rack/test"
# require "guard"


describe "Server Test" do
    include Rack::Test::Methods

    def app
        Sinatra::Application
    end

    it "should load the home page" do
        get "/other"

        expect(last_response).to be_ok
        expect(last_response.body).to eq("The other page")

    end

    it "should redirect" do
        get "/hi"
        expect(last_response).to be_ok
    end

end

