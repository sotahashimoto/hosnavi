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

      it "数値が5以下であること" do
        comment = build(:comment, score: 6)
        comment.valid?
        expect(comment.errors[:score]).to include("は5以下の値にしてください")
      end
    end
  end
end