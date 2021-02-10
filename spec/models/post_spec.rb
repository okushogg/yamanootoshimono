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
  end
end