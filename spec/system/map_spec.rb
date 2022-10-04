require 'rails_helper'

RSpec.describe "Maps", type: :system do
  let!(:user) { create(:user, email: 'test@example.com', password: '12345678', password_confirmation: '12345678') }
  let!(:toilet) { create(:toilet) }

  scenario 'GoogleMAPが表示されていること', js: true do
    visit root_path
    expect(page).to have_selector 'map'
  end
end
