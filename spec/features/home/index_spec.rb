require 'rails_helper'

describe 'entry point of application' do

  it 'should say welcome' do
    visit root_path

    expected = 'Welcome to the visual explorer of the TCG APP'
    expect(page).to have_content(expected)
  end

  it 'should be able to navigate to the players index page' do
    visit root_path
binding.pry
    expect(current_path).to eq(root_path)
    expect(page).to have_link :players

    click_link :players
    expect(current_path).to eq(players_path)
  end
end
