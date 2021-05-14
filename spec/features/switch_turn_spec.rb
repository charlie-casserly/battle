feature 'Switch turns' do
  scenario 'initial players turn' do
    sign_in_and_play
    expect(page).to have_content "Charlotte's turn"
  end
  
  scenario 'switches to player 2' do
    sign_in_and_play
    click_button 'Attack'
    click_link 'OK'
    expect(page).to have_content "Mittens's turn"
  end
end