require 'bookmark'

describe Bookmark do 

  describe '.all' do 

    it "returns all of the bookmarks" do 

      connection = PG.connect(dbname: 'bookmark_manager_test')

      connection.exec("INSERT INTO bookmarks (title, url) VALUES ('Makers', 'http://www.makersacademy.com');")

      expect(Bookmark.all[0].title).to include('Makers')
      expect(Bookmark.all[0].url).to include('http://www.makersacademy.com')
      
    end 
  end
    
    describe ".create" do

      it "creates new bookmarks" do
        Bookmark.create('Makers', 'http://www.makersacademy.com')
        expect(Bookmark.all[0].title). to include('Makers')
        expect(Bookmark.all[0].url). to include('http://www.makersacademy.com')
        
    end

  end 

end
