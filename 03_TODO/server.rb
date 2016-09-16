require "sinatra"
require "sinatra/reloader"
require "./lib/logic"
require "pry"


enable(:sessions)

database = [
    {:username => "Tony", :password => "1234"},
    {:username => "Raul", :password => "5678"}
]

get "/login" do
  erb :login
end


post "/signin" do
    user_name = params[:user]
    user_pass = params[:pass]
    if database.any? {|user| user[:username] == user_name && user[:password] == user_pass}
        # session[:logged_user] = user_name
        @current_user = session[:logged_user]
        binding.pry
#         session[:is_logged] = true
#         session[:current_user] = username_received


        redirect to "/profile"
    else
        redirect to "/login"
    end
end

post "/profile" do
    erb :profile
end

post "logout" do
    erb :logout
end



# _________


# get "/logout" do
#     session[:is_logged] = false
#     redirect "/login"
# end



#     if user_pwd_list.any? {|single_user| single_user[:username] ==  username_received and single_user[:password] == password_received}
#         session[:is_logged] = true
#         session[:current_user] = username_received
#         redirect "/"
#     else
#         redirect "/login"
#     end
# end

# get "/" do
#  if session[:is_logged]
#      @current_user = session[:current_user]
#      erb(:user_profile)
#  else
#      redirect "/login"
#     end
# end




