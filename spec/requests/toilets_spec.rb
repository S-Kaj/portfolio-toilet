require 'rails_helper'

RSpec.describe "/toilets", type: :request do
  let(:user) { create(:user) }
  let!(:toilet) { create(:toilet, user_id: user.id) }

  before do
    sign_in user
  end

  context 'GET root_path' do
    it 'ステータスコードが200であること' do
      get root_path
      expect(response).to have_http_status(200)
    end

    it 'レスポンスボディにトイレ情報が含まれること' do
      get root_path
      expect(response.body).to include toilet.created_at.strftime("%Y年%-m月%-d日")
      expect(response.body).to include toilet.toilet_name
      expect(response.body).to include toilet.open_time.strftime("%H:%M")
      expect(response.body).to include toilet.close_time.strftime("%H:%M")
    end
  end

  context 'GET toilet_path' do
    it 'ステータスコードが200であること' do
      get toilet_path(toilet.id)
      expect(response).to have_http_status(200)
    end

    it 'レスポンスボディにトイレ情報および登録者情報が含まれること' do
      get toilet_path(toilet.id)
      expect(response.body).to include toilet.toilet_name
      expect(response.body).to include toilet.created_at.strftime("%Y年%-m月%-d日")
      expect(response.body).to include toilet.m_urinal.to_s
      expect(response.body).to include toilet.m_room.to_s
      expect(response.body).to include toilet.w_room.to_s
      expect(response.body).to include toilet.m_washlet.to_s
      expect(response.body).to include toilet.w_washlet.to_s
      expect(response.body).to include toilet.multipurpose.to_s
      expect(response.body).to include toilet.open_time.strftime("%H:%M")
      expect(response.body).to include toilet.close_time.strftime("%H:%M")
      expect(response.body).to include toilet.remark
      expect(response.body).to include user.user_name
    end
  end

  context 'GET new_toilet_path' do
    it 'ステータスコードが200であること' do
      get new_toilet_path
      expect(response).to have_http_status(200)
    end
  end

  context 'GET edit_toilet_path' do
    it 'ステータスコードが200であること' do
      get edit_toilet_path(toilet.id)
      expect(response).to have_http_status(200)
    end
  end
end
