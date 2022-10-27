require 'rails_helper'

RSpec.describe "Toilets", type: :system, selenium: true do
  let!(:user) { create(:user, email: 'test@example.com', password: '12345678', password_confirmation: '12345678') }

  scenario "マップ上をクリックしていること", js: true do
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
    # 「トイレ情報の登録」ボタンを押下
    click_link 'トイレ情報の登録'
    # この時のスクリーンショットを撮る
    # page.save_screenshot

    # とりあえず「登録する」を押す(?)
    click_button '登録する'

    # トイレ名称を入力
    fill_in 'toilet[toilet_name]', with: 'テストトイレ'

    # 片っ端からマップ上をクリックする
    # for num_x in 1..700 do
    #   for num_y in 300..301 do
    #     page.driver.browser.action
    #     .move_to_location(num_x, num_y)
    #     .click
    #     .perform
    #   end
    # end

    1.step(1400, 100) do |num_x|
      300.step(600, 100) do |num_y|
        page.driver.browser.action
        .move_to_location(num_x, num_y)
        .click
        .perform
      end
    end


    # 「登録する」を押す
    click_button '登録する'


    # この時のスクリーンショットを撮る
    # page.save_screenshot

    binding.pry

    expect(page).to have_text 'JSテスト'
  end
end
