def sign_in_and_play
  visit('/')
  fill_in('player1', with: 'Dec')
  fill_in('player2', with: 'Jo')
  click_button('submit')
end