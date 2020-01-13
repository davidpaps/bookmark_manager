feature 'View index' do
  scenario 'visiting localhost' do
    visit('/')
    expect(page).to have_content 'Hello World'
  end
end