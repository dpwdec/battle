feature 'Player input' do
  scenario 'Player 1 name is displayed' do
    sign_in_and_play
    expect(page).to have_content('Dec')
  end

  scenario 'Player 2 name is displayed' do
    sign_in_and_play
    expect(page).to have_content('Jo')
  end

  scenario 'Player hit points are displayed' do
    sign_in_and_play
    expect(page).to have_content('HP: 100')
  end
end
