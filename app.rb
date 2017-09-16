require_relative 'config/environment'

class App < Sinatra::Base

  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end

  get '/goodbye/:name' do
     "Goodbye, #{params[:name]}."
  end

  get '/multiply/:num1/:num2' do

    # I probably could have done this operation in the model rather than
    # the controller..
    @result = params[:num1].to_i * params[:num2].to_i

    # learned that sinatra has trouble displaying ruby integer type
    # automatically. Had to convert my result to string before creating.
    @result.to_s
  end
end
