require "sinatra"
require "sinatra/reloader"
def view(template); erb template.to_sym; end
before { puts "Parameters: #{params}" }  

get "/" do
    @die1 = rand(1..6)
    @die2 = rand(1..6)
    "<h1> #{@die1} #{@Die2} </h1>"
    view "dice"
end

#get "/tacos" do 
 #   "Yes, please"
#end