require 'sinatra/base'
require 'slim'
require 'sinatra/assetpack'
#require 'sass'
require 'bourbon'

class LifeBoard < Sinatra::Base
  register Sinatra::AssetPack
  assets do
    serve '/css', from: 'css'

    css :application, [
      '/css/normalize.css',
      '/css/main.css'
    ]
  end

  get '/' do
    slim :index
  end
end

