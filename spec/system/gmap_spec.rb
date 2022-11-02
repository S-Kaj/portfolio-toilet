require 'rails_helper'

RSpec.describe "Toilets", type: :system, selenium: true do
  let!(:user) { create(:user, email: 'test@example.com', password: '12345678', password_confirmation: '12345678') }

  scenario "他サイトでGoogleMAPが表示されていること", js: true do
    visit root_path
    # ログインボタンを押す
    click_link 'ログイン'
    # メールアドレスとパスワードを入力する
    fill_in 'user[email]', with: 'test@example.com'
    fill_in 'user[password]', with: '12345678'
    # ログインボタンを押下
    click_button 'ログイン'
    # binding.pry
    expect(current_path).to eq root_path

    # テストページに行く
    visit testpage_toilets_path
    # ここでスクリーンショットを撮る
    page.save_screenshot

  end
end
