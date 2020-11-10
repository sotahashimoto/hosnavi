require 'rails_helper'

RSpec.describe Comment, type: :model do
  describe 'バリデーションのテスト' do
    context 'contentカラム' do
      it "空欄でないこと" do
        comment = build(:comment, content: nil)
        comment.valid?
        expect(comment.errors[:content]).to include("を入力してください")
      end

      it "200文字以下であること" do
        comment = build(:comment, content: "a" * 201)
        comment.valid?
        expect(comment.errors[:content]).to include("は200文字以内で入力してください")
      end
    end

    context 'scoreカラム' do
      it "空欄でないこと" do
        comment = build(:comment, score: nil)
        comment.valid?
        expect(comment.errors[:score]).to include("を入力してください")
      end
    end
  end

  describe 'アソシエーションのテスト' do
    let(:association) do
      described_class.reflect_on_association(target)
    end

    context 'Favoriteモデルとの関係' do
      let(:target) { :favorites }

      it '1:Nとなっている' do
        expect(association.macro).to eq :has_many
      end
    end

    context 'Memberモデルとの関係' do
      let(:target) { :member }

      it 'N:1となっている' do
        expect(association.macro).to eq :belongs_to
      end
    end

    context 'Hospitalモデルとの関係' do
      let(:target) { :hospital }

      it 'N:1となっている' do
        expect(association.macro).to eq :belongs_to
      end
    end
  end
end