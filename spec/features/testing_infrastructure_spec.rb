feature 'Testing infrastructure' do
  scenario 'Can run app and check page content' do
    visit('/')
    expect(page).to have_content 'Testing infrastructure working!'
  end

  scenario 'Player inputs name and name is displayed' do
    visit('/')
    fill_in('player1', with: 'Dec')
    fill_in('player2', with: 'Jo')
    click_button('submit')
    expect(page).to have_content('Dec Jo')
  end
end
