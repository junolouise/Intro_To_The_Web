require 'spec_helper'

feature 'Set up game' do
    scenario 'Users can enter names' do
        sign_in_and_play
        expect(page).to have_content 'Rupert vs Ted'
    end
end