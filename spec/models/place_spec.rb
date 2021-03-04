require 'rails_helper'

describe Place, type: :model do
  describe '#create' do
    before do
      prefecture = FactoryBot.create(:prefecture)
    end

    context '新規登録成功' do
      it "名前、かながある場合、有効である。" do
        place = FactoryBot.build(:place)
        expect(place).to be_valid
      end
    end
    
    context '新規登録失敗' do
      it "名前がない場合、無効である。" do
        place = FactoryBot.build(:place, name: nil)
        place.valid?
        expect(place.errors[:name]).to include("が入力されていません。")
      end
      
      it "かながない場合、無効である。" do
        place = FactoryBot.build(:place, name_kana: nil)
        place.valid?
        expect(place.errors[:name_kana]).to include("が入力されていません。")
      end
      
      it "都道府県IDがない場合、無効である。" do
        place = FactoryBot.build(:place, prefecture_id: nil)
        place.valid?
        expect(place.errors[:prefecture_id]).to include("が入力されていません。")
      end
    end
  end
end