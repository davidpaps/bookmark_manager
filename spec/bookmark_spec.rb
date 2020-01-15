require 'bookmark'

describe Bookmark do 

  describe '#all' do 

    it "returns all of the bookmarks" do 
      expect(Bookmark.all).to include('http://www.makersacademy.com')
      expect(Bookmark.all).to include('http://www.google.com')
      expect(Bookmark.all).to include('http://www.destroyallsoftware.com')
    end 
    
  end 

end
