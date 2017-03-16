require_relative 'config/environment'

class App < Sinatra::Base
  get "/goodbye/:name" do
    @name = params[:name]
    "Goodbye #{@name}!"
  end

  get "/multiply/:num1/:num2" do
    @a = params[:num1]
    @b = params[:num2]

    "#{@a.to_i * @b.to_i}"
  end
end
