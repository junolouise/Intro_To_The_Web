require 'spec_helper'

feature 'View HP' do
    scenario 'Users enter names and can view HP' do
        sign_in_and_play
        expect(page).to have_content 'Ted 100 HP'
    end
end