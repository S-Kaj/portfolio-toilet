require 'rails_helper'

RSpec.describe "Users", type: :request do
  let(:user) { create(:user) }
  let!(:toilet) { create(:toilet, user_id: user.id) }

  before do
    sign_in user
  end

  context 'GET mypage_users_path' do
    it 'ステータスコードが200であること' do
      get mypage_users_path
      expect(response).to have_http_status(200)
    end

    it 'レスポンスボディにユーザー情報およびトイレ情報が含まれること' do
      get mypage_users_path
      expect(response.body).to include user.user_name
      expect(response.body).to include user.email
      expect(response.body).to include user.created_at.strftime("%Y年%-m月%-d日")
      expect(response.body).to include user.updated_at.strftime("%Y年%-m月%-d日")
      expect(response.body).to include toilet.toilet_name
      expect(response.body).to include toilet.created_at.strftime("%Y年%-m月%-d日")
    end
  end
end
