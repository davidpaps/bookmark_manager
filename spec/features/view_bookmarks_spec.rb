feature 'allows user to view bookmarks' do 
  scenario 'it should display bookmarks' do 
    visit ('/')
    click_on 'View all Bookmarks'
    expect(page).to have_content('http://www.makersacademy.com, http://www.google.com, http://www.destroyallsoftware.com')
  end
end 



