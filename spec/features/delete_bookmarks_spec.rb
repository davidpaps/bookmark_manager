feature "Deleting bookmarks" do
  scenario "checking a bookmark has been deleted" do
    Bookmark.create('Makers', 'http://www.makersacademy.com')
    Bookmark.create('Google', 'http://www.google.com')
    visit('/bookmarks')
    find("#DeleteMakers").click
    expect(page).not_to have_content('Makers')
    expect(page).not_to have_link('Makers Academy', href: 'http://www.makersacademy.com')
    expect(page).to have_content('Google')
  end

end