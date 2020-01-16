feature "update bookmark" do
  scenario "check if a bookmark can be updated" do

    connection = PG.connect(dbname: 'bookmark_manager_test')

    connection.exec("INSERT INTO bookmarks (title, url) VALUES ('Makers', 'http://www.makersacademy.com');")
  
    visit('/bookmarks')
    fill_in :title, with: 'YouTube'
    fill_in :url, with: 'http://www.youtube.com'
    find("#UpdateMakers").click
    expect(page).to have_content('YouTube')

  end

end