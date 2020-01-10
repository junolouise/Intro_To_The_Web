require 'spec_helper'

feature 'Reduce player HP' do
    scenario 'it reduces player 2s HP by 10' do
        sign_in_and_play
        click_on('Attack')
        expect(page).to have_content 'Ted HP: 90'
    end
end