feature "Deleting bookmarks" do
  scenario "checking a bookmark has been deleted" do
    
  connection = PG.connect(dbname: 'bookmark_manager_test')

  connection.exec("INSERT INTO bookmarks (title, url) VALUES ('Makers', 'http://www.makersacademy.com');")
  connection.exec("INSERT INTO bookmarks (title, url) VALUES ('Google', 'http://www.google.com');")

    visit('/bookmarks')
    find("#Makers").click
    expect(page).not_to have_content('Makers')
    expect(page).to have_content('Google')
  end
  
end