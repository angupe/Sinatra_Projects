require_relative "../server.rb"
require "rspec"
require "rack/test"
require "guard"


describe "Server Test" do
    include Rack::Test::Methods

    def app
        Sinatra::Application
    end

    it "should load the home page" do
        get "/"
        expect(last_response).to be_ok
    end
end
