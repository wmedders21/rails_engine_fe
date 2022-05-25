require 'rails_helper'

RSpec.describe 'the merchant index' do
  it 'displays a list of merchants' do

    visit '/merchants'

    click_link "merchant name"
    expect(current_path).to eq("/merchants/23")
  end
end
