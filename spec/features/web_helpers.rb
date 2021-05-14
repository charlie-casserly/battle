def sign_in_and_play
  visit('/')
  fill_in :player_1_name, with: 'Charlotte'
  fill_in :player_2_name, with: 'Mittens'
  click_button 'Submit'
end

def kills_player_2
  10.times do
  click_button 'Attack'
  click_link 'OK'
  end
  click_button 'Attack'
end