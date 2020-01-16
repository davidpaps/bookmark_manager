feature "Add a bookmark" do
  scenario "Create a bookmark" do
   visit('/')
   fill_in :title, with: 'Thrasher'
   fill_in :url, with: 'http://www.thrasher.com'
   click_button 'Create Bookmark'
   expect(page).to have_content 'Thrasher'
  end
end