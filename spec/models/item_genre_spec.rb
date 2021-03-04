require 'rails_helper'

describe ItemGenre, type: :model do
  describe '#create' do
    context '新規登録成功' do
      it "名前、かながある場合、有効である。" do
        item_genre = FactoryBot.build(:item_genre)
        expect(item_genre).to be_valid
      end
    end
  end
  
  context '新規登録失敗' do
    it "名前がない場合、無効である。" do
      item_genre = FactoryBot.build(:item_genre, name: nil)
      item_genre.valid?
      expect(item_genre.errors[:name])
    end
    
    it "かながない場合、無効である。" do
      item_genre = FactoryBot.build(:item_genre, name_kana: nil)
      item_genre.valid?
      expect(item_genre.errors[:name_kana])
    end
  end
  
end