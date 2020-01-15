require 'sinatra/base'
require './lib/bookmark'

class BookmarkManager < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  get '/bookmarks' do 
    @bookmarks = Bookmark.all.join(", ")
    erb(:bookmarks)
  end

  post '/bookmarks' do
    session[:create] = params[:create]
    redirect to('/bookmarks')
  end

end