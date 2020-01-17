require 'sinatra/base'
require './lib/bookmark'
require './database_connection_setup'

class BookmarkManager < Sinatra::Base

  use Rack::MethodOverride

  get '/' do
    erb(:index)
  end

  get '/bookmarks' do 
    @bookmarks = Bookmark.all
    erb(:bookmarks)
  end

  post '/bookmarks/new' do
    Bookmark.create(params[:title], params[:url])
    redirect ('/bookmarks')
  end

  delete '/bookmarks/:id' do
    Bookmark.delete(params[:id])
    redirect ("/bookmarks")
  end

  put '/bookmarks/:id' do
    Bookmark.update(params[:title], params[:url], params[:id])
    redirect ("/bookmarks")
  end
  
end