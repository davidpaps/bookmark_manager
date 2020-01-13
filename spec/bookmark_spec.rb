require 'bookmark'
describe Bookmark do 
  describe '#all' do 
    it "returns all of the bookmarks" do 
      book = Bookmark.new
      expect(book.all).to include('bookmark1')
      expect(book.all).to include('bookmark2')
      expect(book.all).to include('bookmark3')

    end 
  end 
end 