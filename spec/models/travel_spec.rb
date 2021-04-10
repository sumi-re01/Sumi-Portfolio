require 'rails_helper'
require "date"

RSpec.describe "Travelモデルに関するテスト", type: :model do
  describe 'バリデーションのテスト' do
    subject { travel.valid? }

    let(:user) { create(:user) }
    let!(:travel) { build(:travel, user_id: user.id) }

    context 'dateカラム' do
      it '空欄でないこと' do
        travel.date = ''
        is_expected.to eq false
      end
      it '日付であること' do
        # 処理
      end
    end
    context 'itineraryカラム' do
      it '20文字以内であること/20' do
        travel.itinerary = Faker::Lorem.Characters(number: 20)
        is_expected.to eq true
      end
      it '20文字以内であること/21' do
        travel.itinerary = Faker::Lorem.Characters(number: 21)
        is_expected.to eq false
      end
    end
  end

  describe 'アソーシエイション' do
  end
end