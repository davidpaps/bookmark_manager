require 'sinatra/base'

class BookmarkManager < Sinatra::Base

  get '/' do
    erb(:index)
  end

  run! if app_file == $0

  get '/bookmarks' do 
  erb(:bookmarks)
  end 
end