require 'pg'

class Bookmark

  def all
    @database = PG.connect(dbname: 'bookmark_manager')
    @database.exec("SELECT * FROM bookmarks").map do |bookmark|
      bookmark["url"]
    end
  end 

end 