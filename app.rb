require 'sinatra/base'
require './lib/bookmark'

class BookmarkManager < Sinatra::Base

  get '/' do
    erb(:index)
  end

  run! if app_file == $0

  get '/bookmarks' do 
  @bookmarks = Bookmark.new.all.join(", ")
    erb(:bookmarks)
  end 
end