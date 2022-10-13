require 'rails_helper'

RSpec.describe "SignUps", type: :system do
  scenario 'ユーザーの新規登録に成功すること' do
    visit root_path
    find('#sign_up').click
    fill_in 'user[user_name]', with: 'テストユーザー'
    fill_in 'user[email]', with: 'test@example.com'
    fill_in 'user[password]', with: '12345678'
    fill_in 'user[password_confirmation]', with: '12345678'
    click_button 'ユーザー登録'
    expect(page).to have_content 'アカウント登録が完了しました。'
    expect(current_path).to eq root_path
  end
end
