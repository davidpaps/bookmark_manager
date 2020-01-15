require 'pg'

class Bookmark

  attr_reader :all
  
  def self.all
    @database = PG.connect(dbname: 'bookmark_manager')
    @database.exec("SELECT * FROM bookmarks").map do |bookmark|
      bookmark["url"]
    end
  end 

end 