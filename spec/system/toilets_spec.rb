require 'rails_helper'

RSpec.describe "Toilets", type: :system, selenium: true do
  let!(:user) { create(:user, email: 'test@example.com', password: '12345678', password_confirmation: '12345678') }

  scenario "ユーザーが新しいトイレ情報を登録できること", js: true do
    visit root_path
    # ログインボタンを押す
    click_link 'ログイン'
    # メールアドレスとパスワードを入力する
    fill_in 'user[email]', with: 'test@example.com'
    fill_in 'user[password]', with: '12345678'
    # ログインボタンを押下
    click_button 'ログイン'
    expect(current_path).to eq root_path
    # 「トイレ情報の登録」ボタンを押下
    click_link 'トイレ情報の登録'
    # 各種項目の入力
    fill_in 'toilet[toilet_name]', with: 'テストトイレ'
    # Googleマップ上にピンを置く
    page.driver.browser.action.move_to_location(880, 480).click.perform
    # その他各種項目の入力
    fill_in 'toilet[m_urinal]', with: '4'
    fill_in 'toilet[m_room]', with: '3'
    check 'toilet[m_washlet]'
    fill_in 'toilet[w_room]', with: '4'
    check 'toilet[w_washlet]'
    # 利用可能時間を選択
    select '07', from: 'toilet[open_time(4i)]'
    select '00', from: 'toilet[open_time(5i)]'
    select '22', from: 'toilet[close_time(4i)]'
    select '30', from: 'toilet[close_time(5i)]'
    fill_in 'toilet[remark]', with: '備考テスト'
    # 「登録する」ボタンを押下
    click_button '登録する'
    expect(page).to have_content '新しいトイレ情報が登録されました。'
  end
end
