feature 'allows user to view bookmarks' do 
  scenario 'it should display bookmarks' do 
    visit ('/')
    click_on 'View all Bookmarks'
    expect(page).to have_content('bookmark1, bookmark2, bookmark3')
  end
end 



