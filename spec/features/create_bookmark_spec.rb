feature "Add a bookmark" do
  scenario "Create a bookmark" do
   visit('/')
   fill_in :title, with: 'Thrasher'
   fill_in :url, with: 'http://www.thrasher.com'
   click_button 'Create Bookmark'
   expect(page).to have_content 'Thrasher'
   expect(page).to have_link('Thrasher', href: 'http://www.thrasher.com')
  end
end
