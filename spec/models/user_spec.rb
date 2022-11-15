require 'rails_helper'

RSpec.describe User, type: :model do
  describe "ユーザー登録時のテスト" do
    it "必要な項目が揃っている場合は有効であること" do
      user = create(:user)
      user.valid?
      expect(user).to be_valid
    end

    context "バリデーションのチェック" do
      it "ユーザー名が空欄の場合は無効であること" do
        user = build(:user, user_name: nil)
        user.valid?
        expect(user.errors.messages[:user_name]).to include("を入力してください")
      end

      it "ユーザー名が21文字以上の場合は無効であること" do
        user = build(:user, user_name: "a" * 21)
        user.valid?
        expect(user.errors.messages[:user_name]).to include("は20文字以内で入力してください")
      end

      it "ユーザー名が重複する場合は無効であること" do
        user1 = create(:user, user_name: "山田太郎")
        expect(user1).not_to be nil
        user2 = build(:user, user_name: "山田太郎")
        user2.valid?
        expect(user2.errors.messages[:user_name]).to include("はすでに存在します")
      end

      it "メールアドレスが空欄の場合は無効であること" do
        user = build(:user, email: nil)
        user.valid?
        expect(user.errors.messages[:email]).to include("を入力してください")
      end

      it "メールアドレスが重複する場合は無効であること" do
        user1 = create(:user, email: "test@example.com")
        expect(user1).not_to be nil
        user2 = build(:user, email: "test@example.com")
        user2.valid?
        expect(user2.errors.messages[:email]).to include("はすでに存在します")
      end

      it "パスワードが空欄の場合は無効であること" do
        user = build(:user, password: nil)
        user.valid?
        expect(user.errors.messages[:password]).to include("を入力してください")
      end

      it "パスワードが6文字未満の場合は無効であること" do
        user = build(:user, password: "12345")
        user.valid?
        expect(user.errors.messages[:password]).to include("は6文字以上で入力してください")
      end

      it "パスワードとパスワードの確認が一致しない場合は無効であること" do
        user = build(:user, password: "123456", password_confirmation: "654321")
        user.valid?
        expect(user.errors.messages[:password_confirmation]).to include("とパスワードの入力が一致しません")
      end
    end
  end
end
