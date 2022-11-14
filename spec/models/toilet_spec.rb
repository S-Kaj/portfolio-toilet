require 'rails_helper'

RSpec.describe Toilet, type: :model do
  describe 'トイレ情報の登録時のテスト' do
    let(:user) { create(:user) }

    it "必要な項目が揃っている場合は有効であること" do
      toilet = create(:toilet, user_id: user.id)
      toilet.valid?
      expect(toilet).to be_valid
    end

    context 'バリデーションのチェック' do
      it "トイレ名称が空欄の場合は無効であること" do
        toilet = build(:toilet, toilet_name: nil, user_id: user.id)
        toilet.valid?
        expect(toilet.errors.messages[:toilet_name]).to include("を入力してください")
      end

      it "トイレ名称が31文字以上の場合は無効であること" do
        toilet = build(:toilet, toilet_name: "a" * 31, user_id: user.id)
        toilet.valid?
        expect(toilet.errors.messages[:toilet_name]).to include("は30文字以内で入力してください")
      end

      it "マップ上で位置を未選択の場合は無効であること" do
        toilet = build(:toilet, latitude: nil, longtitude: nil, user_id: user.id)
        toilet.valid?
        expect(toilet.errors.messages[:latitude]).to include("を入力してください")
      end
    end

    it "重複したトイレ名称では無効であること" do
      toilet1 = create(:toilet, toilet_name: "トイレA", user_id: user.id)
      toilet2 = build(:toilet, toilet_name: "トイレA", user_id: user.id)
      toilet2.valid?
      expect(toilet2.errors.messages[:toilet_name]).to include("はすでに存在します")
    end

    it "備考が101文字以上の場合は無効であること" do
      toilet = build(:toilet, remark: "a" * 101, user_id: user.id)
      toilet.valid?
      expect(toilet.errors.messages[:remark]).to include("は100文字以内で入力してください")
    end
  end
end
