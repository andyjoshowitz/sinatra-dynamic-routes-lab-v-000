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
    @phrse * @number
  end

end