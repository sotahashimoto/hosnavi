require 'rails_helper'

RSpec.describe Event, type: :model do
  describe 'バリデーションのテスト' do
    context 'start_timeカラム' do
      it "空欄でないこと" do
        event = build(:event, start_time: nil)
        event.valid?
        expect(event.errors[:start_time]).to include("を入力してください")
      end
    end

    context 'titleカラム' do
      it "空欄でないこと" do
        event = build(:event, title: nil)
        event.valid?
        expect(event.errors[:title]).to include("を入力してください")
      end

      it "25文字以下であること" do
        event = build(:event, title: "a" * 26)
        event.valid?
        expect(event.errors[:title]).to include("は25文字以内で入力してください")
      end
    end

    context 'contentカラム' do
      it "25文字以下であること" do
        event = build(:event, content:  "a" * 26)
        event.valid?
        expect(event.errors[:content]).to include("は25文字以内で入力してください")
      end
    end
  end
end