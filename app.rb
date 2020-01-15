require 'sinatra/base'
require './lib/bookmark'

class BookmarkManager < Sinatra::Base

  # enable :sessions

  get '/' do
    erb(:index)
  end

  get '/bookmarks' do 
    @bookmarks = Bookmark.all.join(", ")
    erb(:bookmarks)
  end

  post '/bookmarks' do
    # session[:url] = params[:url]
    url = params[:url]
    connection = PG.connect(dbname: 'bookmark_manager_test')
    connection.exec( "INSERT INTO bookmarks (url) VALUES ('#{url}')")
    redirect to('/bookmarks')
  end

end