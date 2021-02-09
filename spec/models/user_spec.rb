require 'rails_helper'

describe User, type: :model do
  describe '#create' do
    context 'sign_up' do
      it "名前、メールアドレス、パスワードがある場合、有効である。" do
        user = FactoryBot.build(:user)
        expect(user).to be_valid
      end
      
      it "名前がない場合、無効である。" do
        user = FactoryBot.build(:user, name: nil)
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
      
      
    end
  end
end