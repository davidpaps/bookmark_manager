feature "Add a bookmark" do
  scenario "Create a bookmark" do
    visit('/')
   fill_in :create, with: 'http://www.thrasher.com'
   click_button 'Create Bookmark'
   expect(page).to have_content 'http://www.thrasher.com'
  end
end