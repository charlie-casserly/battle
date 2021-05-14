feature 'lose screen' do
  scenario 'displays a lose screen' do
    sign_in_and_play
    kills_player_2
    expect(page).to have_content 'Mittens loses!'
  end
end