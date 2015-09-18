require 'spec_helper'

feature 'Starting a new game' do

  scenario 'I am asked to enter my name' do
    visit '/'
    click_button 'Play!'
    expect(page).to have_content "What's your name?"
  end

  scenario 'I can my enter my name' do
    visit '/'
    fill_in 'player', :with => 'Michael'
    click_button 'Play!'
    expect(page).to have_content "Welcome to the game, Michael!"
  end

  scenario 'Asks for an actual name to be entered' do
    visit '/'
    fill_in 'player', :with => ''
    click_button 'Play!'
    expect(page).to have_content "What's your name?"
  end

  scenario 'Shows a battleships board to new player' do
    visit '/'
    fill_in 'player', :with => 'Michael'
    click_button 'Play!'
    expect(page).to have_content 'J10'
  end

end
