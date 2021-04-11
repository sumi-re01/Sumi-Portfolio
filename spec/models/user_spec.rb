
require 'rails_helper'

RSpec.describe "Userモデルに関するテスト",type: :model do
  describe'バリデーション' do
    subject { user.valid? }

    let!(:other_user) { create(:user) }
    let(:user) { build(:user) }

    context 'nameカラム' do
      it '空欄でないこと' do
        user.name = ''
        is_expected.to eq false
      end
    end

    describe 'アソーシエイション' do
      context 'SnsCredentialモデルとの関係' do
        it '1:Nとなっている' do
          expect(User.reflect_on_association(:sns_credentials).macro).to eq :has_many
        end
      end

      context 'Markモデルとの関係' do
        it '1:Nとなっている' do
          expect(User.reflect_on_association(:marks).macro).to eq :has_many
        end
      end

      context 'Galleryモデルとの関係' do
        it '1:Nとなっている' do
          expect(User.reflect_on_association(:galleries).macro).to eq :has_many
        end
      end

      context 'Travelモデルとの関係' do
        it '1:Nとなっている' do
          expect(User.reflect_on_association(:travels).macro).to eq :has_many
        end
      end

    end
  end
end