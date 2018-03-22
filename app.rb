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
    
  end
  
  get "/say/:number/:phrase" do
    @number = params[:number]
    @phrase = params[:phrase] 
    @number.times{puts @phrase}
  end

end