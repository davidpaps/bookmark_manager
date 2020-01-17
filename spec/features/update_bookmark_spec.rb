feature "update bookmark" do
  scenario "check if a bookmark can be updated" do
    Bookmark.create('Makers', 'http://www.makersacademy.com')
    visit('/bookmarks')
    expect(page).to have_link('Makers', href: 'http://www.makersacademy.com')
    fill_in :title, with: 'YouTube'
    fill_in :url, with: 'http://www.youtube.com'
    find("#UpdateMakers").click
    expect(page).to have_content('YouTube')
    expect(current_path).to eq '/bookmarks'
    expect(page).not_to have_link('Makers Academy', href: 'http://www.makersacademy.com')
    expect(page).to have_link('YouTube', href: 'http://www.youtube.com')
  end

end