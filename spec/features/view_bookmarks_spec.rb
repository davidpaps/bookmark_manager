feature 'allows user to view bookmarks' do 
  scenario 'it should display bookmarks' do 
    Bookmark.create('Makers', 'http://www.makersacademy.com')
    Bookmark.create('Google', 'http://www.google.com')
    Bookmark.create('Destroy All Software', 'http://www.destroyallsoftware.com')
    visit ('/bookmarks')
    expect(page).to have_content('Makers')
    expect(page).to have_content('Google')
    expect(page).to have_content('Destroy All Software')
  end

end 



