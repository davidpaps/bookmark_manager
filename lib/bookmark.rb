require 'pg'

class Bookmark

  def initialize
    @database = PG.connect(dbname: 'bookmark_manager')
  end

  def all
    @database.exec("SELECT url FROM bookmarks").map do |bookmark|
      bookmark["url"]
    end
  end 

end 