require 'sinatra/base'
require './lib/bookmark'

class BookmarkManager < Sinatra::Base

  use Rack::MethodOverride

  get '/' do
    erb(:index)
  end

  get '/bookmarks' do 
    @bookmarks = Bookmark.all
    erb(:bookmarks)
  end

  post '/bookmarks' do
    Bookmark.create(params[:title], params[:url])
    redirect to('/bookmarks')
  end

  delete '/bookmarks/:id' do
    Bookmark.delete(params[:id])
    redirect ("/bookmarks")
  end
end