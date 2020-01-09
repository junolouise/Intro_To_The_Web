def sign_in_and_play
    visit ('/')
    fill_in('player_one_name', with: 'Rupert')
    fill_in('player_two_name', with: 'Ted')
    click_on('Start game')
end