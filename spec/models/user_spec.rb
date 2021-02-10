require 'rails_helper'

describe User, type: :model do
  describe '#create' do
    context '新規登録成功' do
      it "名前、メールアドレス、パスワードがある場合、有効である。" do
        user = FactoryBot.build(:user)
        expect(user).to be_valid
      end
    end
    
    context '新規登録失敗' do
      it "名前がない場合、無効である。" do
        user = FactoryBot.create(:user, name: nil)
        user.valid?
        expect(user.errors[:name]).to include("が入力されていません。")
      end
      
      it "メールアドレスがない場合、無効である。" do
        user = FactoryBot.build(:user, email: nil)
        user.valid?
        expect(user.errors[:email]).to include("が入力されていません。")
      end
      
      it "パスワードがない場合、無効である。" do
        user = FactoryBot.build(:user, password: nil)
        user.valid?
        expect(user.errors[:password]).to include("が入力されていません。")
      end
      
      it "パスワードが６文字以下である場合、無効である。" do
        user = FactoryBot.build(:user, password: "aaa")
        user.valid?
        expect(user.errors[:password]).to include("は6文字以上に設定して下さい。")
      end
      
      it "すでに使用されているメールアドレスである場合、無効である。" do
        user_a = FactoryBot.build(:user, email: "test_a@example.com")
        user_b = FactoryBot.build(:user, email: "test_a@example.com")
        user_b.valid?
        expect(user_b.errors[:email])
      end
      
    end
  end
end