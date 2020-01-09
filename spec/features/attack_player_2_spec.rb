require 'spec_helper'

feature 'Attack player two' do
    scenario 'Player one can attack player two' do
        sign_in_and_play
        click_on('Attack')
        expect(page).to have_content 'Rupert attacked Ted'
    end
end