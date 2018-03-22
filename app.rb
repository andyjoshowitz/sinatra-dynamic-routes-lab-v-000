require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    "Welcome!"
  end
  
  get "/reversename/:name" do
    @user_name = params[:name]
    "#{@user_name.reverse!}!"
  end
  
  get "/square/:number" do
     @square = (params[:number].to_i)**2
    "#{@square}"
  end
  
  get "/say/:number/:phrase" do
    @number = params[:number].to_i
    @phrase = params[:phrase] 
    @phrase * @number
  end
  
  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @words = [params[:word1], params[:word2], params[:word3]. params[:word4], params[:word5]].join(" ")
    "#{@words}."
  end

end