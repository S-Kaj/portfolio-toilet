require 'rails_helper'

RSpec.describe "SignIns", type: :system do
  let!(:user) { create(:user, email: 'test@example.com', password: '12345678', password_confirmation: '12345678') }

  scenario '既存ユーザーがログインおよびログアウトに成功すること' do
    # ログインを検証
    visit root_path
    click_link 'ログイン'
    fill_in 'user[email]', with: 'test@example.com'
    fill_in 'user[password]', with: '12345678'
    click_button 'ログイン'
    expect(page).to have_content 'ログインしました。'
    expect(current_path).to eq root_path
    # ログアウトを検証
    click_link 'ログアウト'
    expect(page).to have_content 'ログアウトしました。'
    expect(current_path).to eq root_path
  end
end
