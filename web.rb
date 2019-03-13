require 'sinatra/base'
module CiliaBot
  class Web < Sinatra::Base
    get '/' do
      'OK'
    end
  end
end

