feature 'Name input' do
  scenario 'Player names and hit points are displayed' do
    visit('/')
    fill_in('player1', with: 'Dec')
    fill_in('player2', with: 'Jo')
    click_button('submit')
    expect(page).to have_content('Dec: 100')
    expect(page).to have_content('Jo: 100')
  end
end
