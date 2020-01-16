require 'pg'

class Bookmark

    attr_reader :title, :url, :id

  def initialize(title, url, id)
    @title = title
    @url = url
    @id = id
  end

  def self.all
    connection = self.connect
    result = connection.exec("SELECT * FROM bookmarks")
    result.map { |bookmark| self.new( bookmark["title"], bookmark["url"], bookmark["id"] ) }
  end 

  def self.create(title, url)
    connection = self.connect
    connection.exec("INSERT INTO bookmarks (url, title) VALUES('#{url}', '#{title}')")
  end

  def self.delete(id)
    connection = self.connect
    connection.exec("DELETE FROM bookmarks WHERE id = '#{id}'")
  end

  def self.update(title, url, id)
    connection = self.connect
    connection.exec("UPDATE bookmarks SET url = '#{url}', title = '#{title}' WHERE id = '#{id}' ")
  end

  private

  def self.connect
    if ENV[ 'ENVIRONMENT' ] == 'test'
     PG.connect(dbname: 'bookmark_manager_test')
    else      
      PG.connect(dbname: 'bookmark_manager')
    end
  end

end 