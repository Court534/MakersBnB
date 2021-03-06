feature 'List a space' do
  scenario 'I would like to be able to list a space and name' do
    visit('/add_space')
    fill_in('space_name', :with => "room1")
    fill_in('owner_name', :with => "Jeff")
    click_button 'Post'
    expect(page).to have_content "room1"
    expect(page).to have_content "Jeff"
  end
end

    
