require 'bookmark'

describe Bookmark do 

  describe '#all' do 

    it "returns all of the bookmarks" do 
      book = Bookmark.new
      expect(book.all).to include('http://www.makersacademy.com')
      expect(book.all).to include('http://www.google.com')
      expect(book.all).to include('http://www.destroyallsoftware.com')
    end 
    
  end 

end
