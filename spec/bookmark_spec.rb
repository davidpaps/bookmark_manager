require 'bookmark'

describe Bookmark do 

  describe '.all' do 
    it "returns all of the bookmarks" do 
      Bookmark.create('Makers', 'http://www.makersacademy.com')
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

    describe ".delete" do
      it 'deletes the given bookmark' do
        Bookmark.create('YouTube', 'http://www.youtube.com')
        Bookmark.delete(Bookmark.all[0].id)
        expect(Bookmark.all.length).to eq 0
    end
  end

    describe '.update' do
      it 'updates the bookmark with the given data' do
        Bookmark.create('Makers', 'http://www.makersacademy.com')
        Bookmark.update('Snakers', 'http://www.snakersacademy.com', Bookmark.all[0].id)
        expect(Bookmark.all[0].title).to eq 'Snakers'
        expect(Bookmark.all[0].url).to eq 'http://www.snakersacademy.com'
    end
  end
  
end
