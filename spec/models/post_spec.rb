require 'rails_helper'

describe Post, type: :model do
  describe '#create' do
    before do
      user = FactoryBot.create(:user)
      prefecture = FactoryBot.create(:prefecture)
      item_genre = FactoryBot.create(:item_genre)
      place = FactoryBot.create(:place, prefecture_id: prefecture.id)
    end
    
    context '新規登録成功' do
      it "すべて揃っている場合、有効である。" do
        post = FactoryBot.build(:post)
        expect(post).to be_valid
      end
    end
    
    context '新規登録失敗' do
      it "詳細がない場合、無効である。" do
        post = FactoryBot.build(:post, detail: nil)
        post.valid?
        expect(post.errors[:detail]).to include("が入力されていません。")
      end
      
      it "発見日がない場合、無効である。" do
        post = FactoryBot.build(:post, found_day: nil)
        post.valid?
        expect(post.errors[:found_day]).to include("が入力されていません。")
      end
      
      it "届け先がない場合、無効である。" do
        post = FactoryBot.build(:post, strage_place: nil)
        post.valid?
        expect(post.errors[:strage_place]).to include("が入力されていません。")
      end
    end
    
  end
end