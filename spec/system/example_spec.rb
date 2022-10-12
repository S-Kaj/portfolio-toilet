require 'rails_helper'

RSpec.describe "Examples", type: :system do
  let!(:user) { create(:user, email: 'test@example.com', password: '12345678', password_confirmation: '12345678') }
  # let!(:toilet) { create(:toilet, latitude: '35.68', longtitude: '139.75') }

  scenario 'JavaScriptが動作すること', js: true do
  # scenario 'JavaScriptが動作すること' do
    visit root_path
    click_link 'ログイン'
    fill_in 'user[email]', with: 'test@example.com'
    fill_in 'user[password]', with: '12345678'
    click_button 'ログイン'
    visit testpage_toilets_path
    expect(current_path).to eq testpage_toilets_path

    # puts page.driver.browser.manage.logs.get(:browser)
    binding.pry

    expect(page).to have_selector 'div#box'
    # expect(page).to have_selector('div#box', visible: false)
    # expect(page).to have_content 'クリックで表示が変わります！'
    click_button 'ボタンを押してください'

    binding.pry
    expect(page).to_not have_selector 'div#box'
    # expect(page).to_not have_selector('#box', visible: false)
    # expect(page).to_not have_content 'クリックで表示が変わります！'
    click_button 'ボタンを押してください'

    expect(page).to have_selector 'div#box'
    # expect(page).to have_selector('#box', visible: false)
    # expect(page).to have_content 'クリックで表示が変わります！'
  end
end
