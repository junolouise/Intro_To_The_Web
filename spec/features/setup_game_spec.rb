require 'spec_helper'

feature 'Set up game' do
    scenario 'Users can enter names' do
        visit ('/')
        fill_in('player_one_name', with: 'Rupert')
        fill_in('player_two_name', with: 'Ted')
        click_on('Start game')
        expect(page).to have_content 'Rupert vs Ted'
    end
end