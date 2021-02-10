require 'rails_helper'

describe Prefecture, type: :model do
  describe '#create' do
    context '有効' do
      it "名前、かな、地域がある場合、有効である。" do
        prefecture = FactoryBot.build(:prefecture)
        expect(prefecture).to be_valid
      end
    end
    
    context '無効' do
      it "名前がない場合、無効である。" do
        prefecture = FactoryBot.build(:prefecture, prefecture_name: nil)
        prefecture.valid?
        expect(prefecture.errors[:prefecture_name])
      end
      
      it "かながない場合、無効である。" do
        prefecture = FactoryBot.build(:prefecture, prefecture_name_kana: nil)
        prefecture.valid?
        expect(prefecture.errors[:prefecture_name_kana])
      end
      
      it "地域がない場合、無効である。" do
        prefecture = FactoryBot.build(:prefecture, region: nil)
        prefecture.valid?
        expect(prefecture.errors[:region])
      end
    end
  end
end