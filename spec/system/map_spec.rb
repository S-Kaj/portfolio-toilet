require 'rails_helper'

RSpec.describe "Maps", type: :system do
  let!(:user) { create(:user, email: 'test@example.com', password: '12345678', password_confirmation: '12345678') }
  let!(:toilet) { create(:toilet, latitude: '35.68', longtitude: '139.75') }

  scenario 'GoogleMAPが表示されていること', js: true do
    visit root_path
    click_link 'ログイン'
    fill_in 'user[email]', with: 'test@example.com'
    fill_in 'user[password]', with: '12345678'
    click_button 'ログイン'
    # binding.pry
    # expect(page).to have_selector 'map_index'
    # puts page.driver.browser.manage.logs.get(:browser)
    binding.pry
    # expect(page).to have_selector('div#map_index', visible: false)
    expect(page).to have_selector 'div#map_index'
    # click_button 'ボタンを押してください'
    # expect(page).not_to have_selector 'map_index'
  end
end
