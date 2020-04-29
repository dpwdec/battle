feature 'Name input' do
  scenario 'Player inputs name and name is displayed' do
    visit('/')
    fill_in('player1', with: 'Dec')
    fill_in('player2', with: 'Jo')
    click_button('submit')
    expect(page).to have_content('Dec Jo')
  end
end